using Ink.Runtime;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

/// <summary>
/// Displays all story text and dialogue choices as written in the game's Ink file(s). Is attached to the Canvas gameObject in GameScene.
/// //The code here is based partially off of this tutorial series (with some modifications to suit our specific project): https://youtu.be/nWQmPCDPl04
/// </summary>
public class InkTextDisplay : MonoBehaviour
{
    //ONLY FOR TESTING PURPOSES, LEAVE BLANK FOR RELEASE BUILDS! Allows a developer to skip directly to a certain part of the story for debugging purposes.
    public string startKnot;

    public int totalChaptersImplemented;    //The total number of chapters *currently* implemented in the game. Update as needed.

    public TextAsset inkJson;   //The JSON file associated with the Ink story file. It's compiled automatically everytime the Ink file is edited.
    private Story story;    //Variable containing info about the story.

    string mostRecentStoryText; //The most recent line of text the player has encountered. Recorded for progress saving purposes.
    string mostRecentAmbiance;   //The most recent set of background noises that the player has encountered. Recorded for saving purposes.

    public Text textPrefab; //A generic text box prefab.
    //public Button buttonPrefab; //A generic button prefab.
    public InputField textInputFieldPrefab;   //A generic text input field. Used for when the player types in their name.

    public AudioSource ambiance;    //The audio source used to play looping background sound.
    public AudioSource soundEffects;    //The audio source used for momentary sound effects.

    public float ambianceTransitionRate;    //The amount of time it takes for one ambiance track to switch to another.

    //The audioclips for ambiance audio. 
    //NOTE that a new public variable has to be created for each new sound file that's added to the game.
    //This may not be the most efficient way of doing things.
    public AudioClip DistantChatter;
    public AudioClip TrainCrowd;
    public AudioClip CrowdLight;
    public AudioClip CrowdOutdoor;
    public AudioClip CarMoving;
    public AudioClip TrafficLighter;
    public AudioClip TrafficLight;
    public AudioClip FountainTraffic;
    public AudioClip PanSizzle;
    public AudioClip WaterfallTraffic;

    //The audioclips for individual sound effects. See the NOTE above.
    public AudioClip TrainWhistle;
    public AudioClip DoorSlidingWood;
    public AudioClip LuggageMove;
    public AudioClip DogBark;
    public AudioClip DogMove;
    public AudioClip DogLick;
    public AudioClip TicketPunch1;
    public AudioClip TicketPunch2;
    public AudioClip FootstepsLeave;
    public AudioClip FootstepsCloser;
    public AudioClip DoorTrainOpen;
    public AudioClip CarStart;
    public AudioClip CarOff;
    public AudioClip DoorCloseCreak;
    public AudioClip DoorOpenCreak;
    public AudioClip DoorOpenCloseCreak;
    public AudioClip DoorOpenDog;
    public AudioClip DogMovingLick;
    public AudioClip Rooster;
    public AudioClip DoorKnock;
    public AudioClip TypingShort;
    public AudioClip Printing;
    public AudioClip SkateboardStop;
    public AudioClip TinyBell;

    public string enterNameTooltipText; //Text that appears onscreen explaining how the player can enter their custom name.

    //Text associated with the screen that appears when the player completes a chapter.
    public string chapterEndScreenToolTipText;
    public string returnToMenuButtonText;
    public string continueToNextChapterButtonText;

    bool firstTapEnded;
    public float doubleTapDuration;
    float doubleTapTimer;

    void Start()
    {
        doubleTapTimer = 0f;
    }

    void Update()
    {
        if(Input.touchCount > 0)
        {
            Touch touch = Input.GetTouch(0);

            if(doubleTapTimer > 0 && firstTapEnded == true)
            {
                Debug.Log("Double tap!");
                firstTapEnded = false;
                OnDoubleTap();
            }
            else
            {
                doubleTapTimer = doubleTapDuration;
            }

            if(touch.phase == TouchPhase.Ended)
            {
                firstTapEnded = true;
            }

        } else if(Input.touchCount == 0 && doubleTapTimer >= 0)
        {
            doubleTapTimer -= Time.deltaTime;

            if(doubleTapTimer <= 0f)
            {
                firstTapEnded = false;
                doubleTapTimer = 0f;
            }
        }
    }
    
    void OnDoubleTap()
    {
        int selectedChoiceIndex;

        bool canBeParsed = Int32.TryParse(UAP_AccessibilityManager.GetCurrentFocusObject().gameObject.name, out selectedChoiceIndex);

        if(canBeParsed == true)
        {
            story.ChooseChoiceIndex(selectedChoiceIndex);
            RefreshUI(false);
        }
    }

    /// <summary>
    /// Tells the script to begin displaying story content. Called by VoiceOverNotificationTextManager.cs once the player exits the welcome/tutorial screen.
    /// </summary>
    public void BeginStory()
    {
        story = new Story(inkJson.text);    //Sets the story.

        if(startKnot != null && startKnot != "")   //Checks to see if the startKnot has been set to anything. (Only for development purposes. The start knot should be left blank by default.)
        {
            story.ChoosePathString(startKnot);  //Skips directly to the specified knot, if one is chosen by the developer
            RefreshUI(false);
        }
        else if(PlayerPrefs.GetString("storyText") != "" && PlayerPrefs.GetString("storyState") != "")    //Checks to see if there's any saved progress data in playerprefs
        {
            PlayNewAmbiance(PlayerPrefs.GetString("ambiance"));
            RefreshUI(true);
        }
        else
        {
            RefreshUI(false);    //Otherwise, runs the standard screen refresh function (which takes the player to the start of the game by default).
        }
    }

    /// <summary>
    /// Resets the text/buttons every time the player makes a dialogue choice.
    /// </summary>
    public void RefreshUI(bool loadingSavedData)
    {
        bool textInputFieldOpen = false;    //Used to determine if an input field should be placed onscreen.

        EraseUI();

        Text storyText = Instantiate(textPrefab) as Text;   //Instantiates a text gameObject.

        //Determines what to load for the next set of story text.
        if(loadingSavedData == true)
        {
            Debug.Log("Loading saved data.");
            story.state.LoadJson(PlayerPrefs.GetString("storyState"));    //Loads the player's saved data.
            storyText.text = PlayerPrefs.GetString("storyText"); //Loads in the last text the player saw before saving.
        }
        else
        {
            storyText.text = LoadStoryChunk();  //Otherwise, Loads the next chunk of story content into the text gameObject.
        }

        Debug.Log("Number of Detected Tags: " + story.currentTags.Count);

        //Checks all the Ink tags present in the current chunk of story text, and determines if any of them should trigger any functions.
        foreach(string tag in story.currentTags)
        {
            Debug.Log("Tag: " + tag);

            if(tag.Contains("Ambiance"))    //Checks for any tags related to background ambiance.
            {
                PlayNewAmbiance(tag);

            }
            else if(tag.Contains("SFX"))  //Checks for any tags related to momentary sound effects.
            {
                PlayNewSoundEffect(tag);

            }
            else if(tag.Contains("Analytics"))    //Checks for any tags related to analytics.
            {
                TriggerAnalytics(tag);
            }
            else if(tag.Contains("Create Custom Name Input Field")) //Checks to see if there should be a text input field onscreen.
            {
                //Informs the player that a text field is onscreen.
                Text enterNameTooltipTextGameObject = Instantiate(textPrefab) as Text;
                enterNameTooltipTextGameObject.text = enterNameTooltipText;
                AccessibleLabel label = enterNameTooltipTextGameObject.gameObject.AddComponent(typeof(AccessibleLabel)) as AccessibleLabel;  //Adds an accessible label to the text.
                enterNameTooltipTextGameObject.transform.SetParent(this.transform, false);

                UAP_AccessibilityManager.SelectElement(enterNameTooltipTextGameObject.gameObject);   //Directs focus to the notification text, so that it starts being read automatically.

                //Creates the text field itself.
                InputField textInputField = Instantiate(textInputFieldPrefab) as InputField;
                textInputField.transform.SetParent(this.transform, false);

                textInputFieldOpen = true;

            } else if(tag.Contains("CHAPTER COMPLETE: "))   //Checks to see if the player has reached the end of a chapter.
            {
                //Identifies which chapter they've just completed, based on the name of the tag
                //NOTE: Maybe we could just save it as an int in this script, istead?
                string[] stringTagArray = tag.Split(' ');
                int chapterNumber = Int32.Parse(stringTagArray[2]);
                Debug.Log("Number of finished chapter: " + chapterNumber);

                OpenChapterCompleteScreen(chapterNumber);   //Opens the "chapter complete" screen
            }
        }

        //Presents the next batch of story text to the player (unless there is a text input field onscreen instead)
        if (textInputFieldOpen == false)
        {
            mostRecentStoryText = storyText.text;    //Hangs onto the current story text in case the player saves the game and we need to reload at this point.
            AccessibleLabel label = storyText.gameObject.AddComponent(typeof(AccessibleLabel)) as AccessibleLabel;
            storyText.transform.SetParent(this.transform, false);   //Parents the text gameObject to the canvas (this gameObject).

            UAP_AccessibilityManager.SelectElement(storyText.gameObject);
        }

        //Presents the next batch of dialogue choices to the player
        foreach(Choice choice in story.currentChoices)
        {
            /*
            Button choiceButton = Instantiate(buttonPrefab) as Button;  //Instantiates a button gameObject.
            choiceButton.gameObject.AddComponent(typeof(AccessibleButton));
            Text choiceText = choiceButton.GetComponentInChildren<Text>();
            choiceText.text = choice.text;  //Populates the button's text with the appropriate choice text.
            choiceButton.transform.SetParent(this.transform, false);    //Parents the button gameObject to the canvas (this gameObject).

            choiceButton.onClick.AddListener(delegate
            {
                chooseStoryChoice(choice);  //Tells the button to trigger this particular dialogue choice when it is pressed.
            });
            */

            Text choiceText = Instantiate(textPrefab) as Text;  //Instantiates a button gameObject.
            choiceText.text = choice.text;
            choiceText.gameObject.name = choice.index.ToString();   //Names the text gameObject after the choice index it represents.
            AccessibleLabel choiceLabel = choiceText.gameObject.AddComponent(typeof(AccessibleLabel)) as AccessibleLabel;
            choiceText.transform.SetParent(this.transform, false);    //Parents the button gameObject to the canvas (this gameObject).
        }
    }

    /// <summary>
    /// Clears out all of the current text and dialogue choices onscreen.
    /// </summary>
    public void EraseUI()
    {
        for(int i = 0; i < this.transform.childCount; i++)
        {
            Destroy(this.transform.GetChild(i).gameObject);
        }
    }

    /// <summary>
    /// Called whenever the player makes a dialogue choice.
    /// </summary>
    /// <param name="choice"></param>
    void chooseStoryChoice(Choice choice)
    {
        story.ChooseChoiceIndex(choice.index);  //Tells the game which choice the player made, and makes the game respond accordingly.
        RefreshUI(false);    //Clears the screen to populate it with the next text/choices.
    }

    /// <summary>
    /// Loads the next set of text and dialogue choices.
    /// </summary>
    /// <returns></returns>
    string LoadStoryChunk()
    {

        string text = "";

        if(story.canContinue)
        {
            text = story.ContinueMaximally();   //Loads ALL of the lines of text until the next set of dialogue choices. (Use "Continue()" to load only a single line of text)
        }

        return text;
    }

    /// <summary>
    /// Begins the process of changing the background noise playing in the game, which involves other functions/coroutines that call one another in sequence:
    /// New ambiance requested -> PlayNewAmbiance() -> StartFade() -> SwitchAmbianceTrack() -> StartFade() -> DONE
    /// </summary>
    /// <param name="input"></param>
    public void PlayNewAmbiance(string input)
    {
        //Checks to see if the most recently requested ambiance is actually the one that's currently playing.
        if(mostRecentAmbiance == null || input.Contains(mostRecentAmbiance) == false)
        {
            //If the requested ambiance is new, starts audio fade-out of the current ambiance. (If requested ambiance is just the current ambiance, does nothing.)
            StartCoroutine(StartFade(ambiance, ambianceTransitionRate / 2f, 0f, input));
        }
    }

    /// <summary>
    /// Used to either fade-in or fade-out audio tracks when one ambiance ends and another begins.
    /// Adapted from "Method 1" on this page: https://gamedevbeginner.com/how-to-fade-audio-in-unity-i-tested-every-method-this-ones-the-best/
    /// </summary>
    /// <param name="audioSource"></param>
    /// <param name="duration"></param>
    /// <param name="targetVolume"></param>
    /// <returns></returns>
    public IEnumerator StartFade(AudioSource audioSource, float duration, float targetVolume, string newAmbianceTrackName = null)
    {
        float currentTime = 0;
        float start = audioSource.volume;

        while(currentTime < duration)
        {
            currentTime += Time.deltaTime;
            audioSource.volume = Mathf.Lerp(start, targetVolume, currentTime / duration);
            yield return null;         //Waits until audiosource is brought to desired volume.
        }

        //Checks to see if there's another ambiance track that should be played now that the current one is faded-out. (Only used on fade-outs)
        if(newAmbianceTrackName != null)
        {
            SwitchAmbianceTrack(newAmbianceTrackName);
        }

        yield break;
    }

    /// <summary>
    /// Switches the ambiance track currently set in the ambiance audiosource.
    /// </summary>
    /// <param name="input"></param>
    void SwitchAmbianceTrack(string input)
    {
        //Checks which audio track the tag is referring to. 
        //As noted above, each track has to have a public variable already created for it in order to be played. This may not be the most efficient way to do this.
        if(input.Contains("Ambiance: None"))//Checks to see if the tag is a "None" tag, which actually stops ambiance from playing.
        {
            mostRecentAmbiance = "Ambiance: None";
            ambiance.clip = null;
        }
        else if(input.Contains("DistantChatter"))   //Goes one-by-one, checking each of the ambiance public variables / files provided to the script. For Ambiances, it also checks if a given ambiance is already playing (just to make sure it doesn't restart and already playing ambiance)
        {
            if(ambiance.clip != DistantChatter) //Makes sure the ambiance audiosource is not already playing the desired clip. If it is, no action is taken.
            {
                ambiance.clip = DistantChatter;
                mostRecentAmbiance = "DistantChatter";  //Hangs onto the currently playing ambiance track so that it can be played again later if the player pauses/exits the app.
                ambiance.Play();
            }
        }
        else if(input.Contains("TrainCrowd"))
        {
            if(ambiance.clip != TrainCrowd)
            {
                ambiance.clip = TrainCrowd;
                mostRecentAmbiance = "TrainCrowd";
                ambiance.Play();
            }
        }
        else if(input.Contains("CrowdLight"))
        {
            if(ambiance.clip != CrowdLight)
            {
                ambiance.clip = CrowdLight;
                mostRecentAmbiance = "CrowdLight";
                ambiance.Play();
            }

        }
        else if(input.Contains("CrowdOutdoor"))
        {
            if(ambiance.clip != CrowdOutdoor)
            {
                ambiance.clip = CrowdOutdoor;
                mostRecentAmbiance = "CrowdOutdoor";
                ambiance.Play();
            }
        }
        else if(input.Contains("CarMoving"))
        {
            if(ambiance.clip != CarMoving)
            {
                ambiance.clip = CarMoving;
                mostRecentAmbiance = "CarMoving";
                ambiance.Play();
            }
        }
        else if(input.Contains("TrafficLighter"))
        {
            if(ambiance.clip != TrafficLighter)
            {
                ambiance.clip = TrafficLighter;
                mostRecentAmbiance = "TrafficLighter";
                ambiance.Play();
            }

        }
        else if(input.Contains("TrafficLight"))
        {
            if(ambiance.clip != TrafficLight)
            {
                ambiance.clip = TrafficLight;
                mostRecentAmbiance = "TrafficLight";
                ambiance.Play();
            }

        }
        else if(input.Contains("FountainTraffic"))
        {
            if(ambiance.clip != FountainTraffic)
            {
                ambiance.clip = FountainTraffic;
                mostRecentAmbiance = "FountainTraffic";
                ambiance.Play();
            }
        }
        else if(input.Contains("PanSizzle"))
        {
            if(ambiance.clip != PanSizzle)
            {
                ambiance.clip = PanSizzle;
                mostRecentAmbiance = "PanSizzle";
                ambiance.Play();
            }

        }
        else if(input.Contains("WaterfallTraffic"))
        {
            if(ambiance.clip != WaterfallTraffic)
            {
                ambiance.clip = WaterfallTraffic;
                mostRecentAmbiance = "WaterfallTraffic";
                ambiance.Play();
            }
        }
        else
        {
            ambiance.clip = null;
            Debug.Log("Ambiance name not recognized!"); //If none of the files/variables match, it puts a message in the console and plays no sound.
        }

        StartCoroutine(StartFade(ambiance, ambianceTransitionRate / 2f, 1f));   //Begins the process to fade in the new ambiance track.
    }

    /// <summary>
    /// Plays a new sound effect.
    /// </summary>
    /// <param name="input"></param>
    void PlayNewSoundEffect(string input)
    {
        //Checks which audio track the tag is referring to. 
        //As noted above, each track has to have a public variable already created for it in order to be played.
        //Again, this may not be the most efficient way to do this.

        if(input.Contains("TrainWhistle"))   //Checks the text of the tag, as written in the Ink file. (For example, "#SFX: SlidingDoor")
        {
            soundEffects.clip = TrainWhistle; //Specifies the new clip.
            soundEffects.Play();    //Plays the new clip.

        }
        else if(input.Contains("DoorSlidingWood"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = DoorSlidingWood;
            soundEffects.Play();

        }
        else if(input.Contains("LuggageMove"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = LuggageMove;
            soundEffects.Play();

        }
        else if(input.Contains("DogBark"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = DogBark;
            soundEffects.Play();

        }
        else if(input.Contains("DogMove"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = DogMove;
            soundEffects.Play();

        }
        else if(input.Contains("DogLick"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = DogLick;
            soundEffects.Play();

        }
        else if(input.Contains("TicketPunch1"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = TicketPunch1;
            soundEffects.Play();

        }
        else if(input.Contains("TicketPunch2"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = TicketPunch2;
            soundEffects.Play();

        }
        else if(input.Contains("FootstepsLeave"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = FootstepsLeave;
            soundEffects.Play();

        }
        else if(input.Contains("FootstepsCloser"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = FootstepsCloser;
            soundEffects.Play();

        }
        else if(input.Contains("DoorTrainOpen"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = DoorTrainOpen;
            soundEffects.Play();

        }
        else if(input.Contains("CarStart"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = CarStart;
            soundEffects.Play();

        }
        else if(input.Contains("CarOff"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = CarOff;
            soundEffects.Play();

        }
        else if(input.Contains("DoorCloseCreak"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = DoorCloseCreak;
            soundEffects.Play();

        }
        else if(input.Contains("DoorOpenCreak"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = DoorOpenCreak;
            soundEffects.Play();

        }
        else if(input.Contains("DoorOpenCloseCreak"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = DoorOpenCloseCreak;
            soundEffects.Play();

        }
        else if(input.Contains("DoorOpenDog"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = DoorOpenDog;
            soundEffects.Play();

        }
        else if(input.Contains("DogMovingLick"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = DogMovingLick;
            soundEffects.Play();

        }
        else if(input.Contains("Rooster"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = Rooster;
            soundEffects.Play();

        }
        else if(input.Contains("DoorKnock"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = DoorKnock;
            soundEffects.Play();

        }
        else if(input.Contains("TypingShort"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = TypingShort;
            soundEffects.Play();

        }
        else if(input.Contains("Printing"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = Printing;
            soundEffects.Play();

        }
        else if(input.Contains("SkateboardStop"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = SkateboardStop;
            soundEffects.Play();

        }
        else if(input.Contains("TinyBell"))   //Goes one-by-one, checking each of the SFX public variables / files provided to the script.
        {
            soundEffects.clip = TinyBell;
            soundEffects.Play();

        }
        else
        {
            Debug.Log("Sound effect name not recognized!"); //If none of the files/variables match, it puts a message in the console and plays no sound.
        }
    }

    /// <summary>
    /// Runs analytics code.
    /// </summary>
    /// <param name="input"></param>
    void TriggerAnalytics(string input)
    {
        //You can place analytics-related code here, based on the particular Unity analytics plugin you're using.
        //The code can check what text was written in the Ink tag (such as "#Analytics: PlayerPassedChapter1" for example), and respond appropriately as needed.
    }

    /// <summary>
    /// Causes the game to save the player's progress. Called whenever the player pauses the game, or when the app loses focus.
    /// </summary>
    public void SaveProgress()
    {
        Debug.Log("Saving data.");

        PlayerPrefs.SetString("storyText", mostRecentStoryText);  //Tells the game that the current story text should appear onscreen when the player reloads this save.

        if(mostRecentAmbiance != null)
        {
            PlayerPrefs.SetString("ambiance", mostRecentAmbiance); //Tells the game what ambiance it should play when it's loaded again.
        }

        PlayerPrefs.SetString("storyState", story.state.ToJson()); //Makes the game save the player's progress if they close it out.
    }

    /// <summary>
    /// Updates the Ink variable containing the player's name. This function is called by the CustomPlayerName.cs script on the "Text Input Field" prefab.
    /// </summary>
    /// <param name="newName"></param>
    public void UpdatePlayerName(string newName)
    {
        story.variablesState["player_name"] = newName;
    }

    /// <summary>
    /// Opens the "chapter complete screen," which congratulates the player for completing a chapter and provides them with new options.
    /// </summary>
    /// <param name="chapNum"></param>
    void OpenChapterCompleteScreen(int chapNum)
    {
        /*
        SaveProgress();

        //Ends all sounds.
        ambiance.Stop();
        soundEffects.Stop();

        //"Empties out" the AudioSources, to prevent issues with InkTextDisplay.cs' audio code.
        ambiance.clip = null;
        soundEffects.clip = null;

        EraseUI();  //Clears all the onscreen text/buttons.

        //Informs the player that they've completed a chapter.
        Text chapterCompleteTextGameObject = Instantiate(textPrefab) as Text;
        chapterCompleteTextGameObject.text = "Congratulations, you completed Chapter " + chapNum + "! " + chapterEndScreenToolTipText;
        AccessibleLabel label = chapterCompleteTextGameObject.gameObject.AddComponent(typeof(AccessibleLabel)) as AccessibleLabel;  //Adds an accessible label to the text.
        chapterCompleteTextGameObject.transform.SetParent(this.transform, false);

        UAP_AccessibilityManager.SelectElement(chapterCompleteTextGameObject.gameObject);   //Directs focus to the chapter complete notification text, so that it starts being read automatically.

        //Creates a "return to menu" button.
        Button returnToMenuButton = Instantiate(buttonPrefab) as Button;
        returnToMenuButton.gameObject.AddComponent(typeof(AccessibleButton)); //Adds an accessible button component to the button.
        Text returnToMenuButtonTextGameObject = returnToMenuButton.GetComponentInChildren<Text>();
        returnToMenuButtonTextGameObject.text = returnToMenuButtonText;  //Populates the button's text with the desired text for "return to menu."
        returnToMenuButton.transform.SetParent(this.transform, false);

        returnToMenuButton.onClick.AddListener(delegate
        {
            this.GetComponent<VoiceOverNotificationTextManager>().OpenVoiceOverNotificationText();
        });

        chapNum++;  //This is now the number of the next chapter.
        if(chapNum <= totalChaptersImplemented)  //Checks to see if the next chapter has been implemented yet. If so, creates a button to take the player to the next chapter.
        {
            //Creates a "continue to next chapter" button
            Button continueToNextChapterButton = Instantiate(buttonPrefab) as Button;
            continueToNextChapterButton.gameObject.AddComponent(typeof(AccessibleButton)); //Adds an accessible button component to the button.
            Text continueToNextChapterButtonTextGameObject = continueToNextChapterButton.GetComponentInChildren<Text>();
            continueToNextChapterButtonTextGameObject.text = continueToNextChapterButtonText;  //Populates the button's text with the desired text for "continue to next chapter."
            continueToNextChapterButton.transform.SetParent(this.transform, false);

            continueToNextChapterButton.onClick.AddListener(delegate
            {
                startKnot = "Chapter_" + chapNum.ToString() + "_Start"; //The format used for identifying the start of a new chapter in the Ink script.
                BeginStory();
            });
        }
        */
    }

    void OnApplicationFocus(bool hasFocus)
    {
        //Automatically saves the game when the player doesn't focus on the app.
        if(!hasFocus)
        {
            SaveProgress();
        }
    }
}
