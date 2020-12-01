using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Checks for the "pause" gesture, and opens/closes the pause screen as needed. Is attached to the Canvas gameObject in GameScene.
/// </summary>
public class PauseManager : MonoBehaviour
{
    public Text textPrefab;
    public Button buttonPrefab;

    public AudioSource ambiance;    //The audio source used to play looping background sound.
    public AudioSource soundEffects;    //The audio source used for momentary sound effects.

    //For recording the first finger that the player puts onscreen at any time.
    Touch touchZero;
    Vector2 touchZeroStartPos;
    Vector2 touchZeroEndPos;

    //Recording the second finger.
    Touch touchOne;
    Vector2 touchOneStartPos;
    Vector2 touchOneEndPos;

    //Recording the third finger.
    Touch touchTwo;
    Vector2 touchTwoStartPos;
    Vector2 touchTwoEndPos;

    //Text associated with different menus and submenus of the pause screen.
    public string pauseScreenText;
    public string resumeButtonText;
    public string clearProgressButtonText;
    public string areYouSureText;
    public string confirmClearDataButtonText;
    public string cancelClearDataButtonText;
    public string progressHasBeenClearedText;
    public string returnToStartScreenButtonText;

    bool setToPause;    //Determines if the game is currently paused or not.

    // Start is called before the first frame update
    void Start()
    {
        setToPause = false;
    }

    // Update is called once per frame
    void Update()
    {
        //Checks if the player is making the "pause" gesture: a three-finger swipe upward.
        if(Input.touchCount == 3)   //First, checks if the player is putting three fingers on the screen.
        {
            touchZero = Input.GetTouch(0);
            touchOne = Input.GetTouch(1);
            touchTwo = Input.GetTouch(2);

            //Tracks where the player's first finger is when it begins touching the screen. (Assumes all three fingers will have the same motion as the first finger)
            if(touchZero.phase == TouchPhase.Began)
            {
                touchZeroStartPos = touchZero.position;
            }
            else if(touchZero.phase == TouchPhase.Ended)    //Collects info about where the player's first finger is when it's lifted from the screen.
            {
                touchZeroEndPos = touchZero.position;

                if(touchZeroEndPos.y > touchZeroStartPos.y) //Checks if the player's touch ended upwards of where it began. (Upward swipe)
                {
                    Debug.Log("Three-finger Swipe up!");
                    StartOrStopPause();
                }
            }
        }
    }

    /// <summary>
    /// Opens or closes the pause screen.
    /// </summary>
    void StartOrStopPause()
    {
        //If game is not currently paused, opens the pause screen.
        if(setToPause == false)
        {
            setToPause = true;

            //Saves the player's progress so that they'll be back where they left of when they unpause. Uses a function in InkTextDisplay.cs (which should be attached to the same Canvas gameObject as this script).
            this.GetComponent<InkTextDisplay>().SaveProgress();

            //Ends all sounds.
            ambiance.Stop();
            soundEffects.Stop();

            //"Empties out" the AudioSources, to prevent issues with InkTextDisplay.cs' audio code.
            ambiance.clip = null;
            soundEffects.clip = null;

            OpenMainPauseScreen();
        }

        //If game is currently paused, closes the pause screen.
        else if(setToPause == true)
        {
            setToPause = false;

            this.GetComponent<InkTextDisplay>().PlayNewAmbiance(PlayerPrefs.GetString("ambiance")); //Has InkTextDisplay.cs start playing the most recent ambiance audio again.
            this.GetComponent<InkTextDisplay>().RefreshUI(true);    //Tells InkTextDisplay.cs to clear the text/buttons and replace them with the next set of story text.
        }
    }

    /// <summary>
    /// Opens the first screen the player sees after they pause.
    /// </summary>
    void OpenMainPauseScreen()
    {
        this.GetComponent<InkTextDisplay>().EraseUI();  //Tells InkTextDisplay.cs to clear all the onscreen text/buttons.

        //Creates text explaining that the game is paused.
        Text pauseScreenTextGameObject = Instantiate(textPrefab) as Text;
        pauseScreenTextGameObject.text = pauseScreenText;
        AccessibleLabel label = pauseScreenTextGameObject.gameObject.AddComponent(typeof(AccessibleLabel)) as AccessibleLabel;  //Adds an accessible label to the text.
        pauseScreenTextGameObject.transform.SetParent(this.transform, false);

        UAP_AccessibilityManager.SelectElement(pauseScreenTextGameObject.gameObject);   //Directs focus to the pause notification text, so that it starts being read automatically.

        //Creates an "unpause button," as an alternative to swiping up with three fingers again. (Both work for unpausing the game)
        Button resumeButton = Instantiate(buttonPrefab) as Button;
        resumeButton.gameObject.AddComponent(typeof(AccessibleButton)); //Adds an accessible button component to the button.
        Text resumeButtonTextGameObject = resumeButton.GetComponentInChildren<Text>();
        resumeButtonTextGameObject.text = resumeButtonText;  //Populates the button's text with the desired text for "press to continue."
        resumeButton.transform.SetParent(this.transform, false);

        resumeButton.onClick.AddListener(delegate
        {
            StartOrStopPause();
        });

        //Creates a "clear progress" button
        Button clearProgressButton = Instantiate(buttonPrefab) as Button;
        clearProgressButton.gameObject.AddComponent(typeof(AccessibleButton)); //Adds an accessible button component to the button.
        Text clearProgressButtonTextGameObject = clearProgressButton.GetComponentInChildren<Text>();
        clearProgressButtonTextGameObject.text = clearProgressButtonText;  //Populates the button's text with the desired text.
        clearProgressButton.transform.SetParent(this.transform, false);

        clearProgressButton.onClick.AddListener(delegate
        {
            OpenAreYouSureScreen();
        });
    }

    /// <summary>
    /// Asks the player if they're sure they'd like to clear their progress, and gives them the option of doing so.
    /// </summary>
    void OpenAreYouSureScreen()
    {
        this.GetComponent<InkTextDisplay>().EraseUI();  //Tells InkTextDisplay.cs to clear all the onscreen text/buttons.

        //Creates text asking the player if they really want to clear their progress or not.
        Text areYouSureTextGameObject = Instantiate(textPrefab) as Text;
        areYouSureTextGameObject.text = areYouSureText;
        AccessibleLabel label = areYouSureTextGameObject.gameObject.AddComponent(typeof(AccessibleLabel)) as AccessibleLabel;  //Adds an accessible label to the text.
        areYouSureTextGameObject.transform.SetParent(this.transform, false);

        UAP_AccessibilityManager.SelectElement(areYouSureTextGameObject.gameObject);   //Directs focus to the notification text, so that it starts being read automatically.

        //Creates a "yes" button.
        Button confirmClearDataButton = Instantiate(buttonPrefab) as Button;
        confirmClearDataButton.gameObject.AddComponent(typeof(AccessibleButton)); //Adds an accessible button component to the button.
        Text confirmClearDataButtonTextGameObject = confirmClearDataButton.GetComponentInChildren<Text>();
        confirmClearDataButtonTextGameObject.text = confirmClearDataButtonText;  //Populates the button's text with the desired text.
        confirmClearDataButton.transform.SetParent(this.transform, false);

        confirmClearDataButton.onClick.AddListener(delegate
        {
            ClearPlayerData();
        });

        //Creates an "I change my mind" button.
        Button cancelClearDataButton = Instantiate(buttonPrefab) as Button;
        cancelClearDataButton.gameObject.AddComponent(typeof(AccessibleButton)); //Adds an accessible button component to the button.
        Text cancelClearDataButtonTextGameObject = cancelClearDataButton.GetComponentInChildren<Text>();
        cancelClearDataButtonTextGameObject.text = cancelClearDataButtonText;  //Populates the button's text with the desired text.
        cancelClearDataButton.transform.SetParent(this.transform, false);

        cancelClearDataButton.onClick.AddListener(delegate
        {
            OpenMainPauseScreen();
        });
    }

    /// <summary>
    /// Clears the player's saved progress, and presents them with a notification telling them their progress has been cleared.
    /// </summary>
    void ClearPlayerData()
    {
        PlayerPrefs.DeleteAll();

        this.GetComponent<InkTextDisplay>().EraseUI();  //Tells InkTextDisplay.cs to clear all the onscreen text/buttons.

        //Creates text informing the player that their saved data has been erased.
        Text progressHasBeenClearedTextGameObject = Instantiate(textPrefab) as Text;
        progressHasBeenClearedTextGameObject.text = progressHasBeenClearedText;
        AccessibleLabel label = progressHasBeenClearedTextGameObject.gameObject.AddComponent(typeof(AccessibleLabel)) as AccessibleLabel;  //Adds an accessible label to the text.
        progressHasBeenClearedTextGameObject.transform.SetParent(this.transform, false);

        UAP_AccessibilityManager.SelectElement(progressHasBeenClearedTextGameObject.gameObject);   //Directs focus to the notification text, so that it starts being read automatically.

        //Creates a "back to start screen" button.
        Button returnToStartScreenButton = Instantiate(buttonPrefab) as Button;
        returnToStartScreenButton.gameObject.AddComponent(typeof(AccessibleButton)); //Adds an accessible button component to the button.
        Text returnToStartScreenButtonTextGameObject = returnToStartScreenButton.GetComponentInChildren<Text>();
        returnToStartScreenButtonTextGameObject.text = returnToStartScreenButtonText;  //Populates the button's text with the desired text.
        returnToStartScreenButton.transform.SetParent(this.transform, false);

        returnToStartScreenButton.onClick.AddListener(delegate
        {
            this.GetComponent<VoiceOverNotificationTextManager>().OpenVoiceOverNotificationText();  //Opens what the player would see at the very start of the game.
        });
    }
}
