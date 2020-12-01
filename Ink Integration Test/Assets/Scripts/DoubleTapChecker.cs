using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// A class that determines when the player makes a "double-tap" gesture, then decides what should happen on response based on which gameObject is currently in focus. This script is attached to the Canvas gameObject in GameScene.
/// </summary>
public class DoubleTapChecker : MonoBehaviour
{
    bool firstTapEnded; //Makes sure the first tap in a double-tap has finished (the player has lifted their finger from the screen)
    public float doubleTapDuration; //Determines how long the script waits for the second tap.
    float doubleTapTimer;

    public AudioSource choiceSelectedSound; //An audio source for playing the "beep" sound when a choice has been made by the player. (Uses the same sound effect used by UAP for button presses)

    // Start is called before the first frame update
    void Start()
    {
        doubleTapTimer = 0f;
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.touchCount > 0)    //Checks for any taps.
        {
            Touch touch = Input.GetTouch(0);

            if(touch.phase == TouchPhase.Ended) //Checks to see if the "first tap" has ended.
            {
                firstTapEnded = true;
            }

            //Script checks to see if the current tap is the "second tap" of a double-tap. It does so by checking if the first tap has eneded, and also whether/not too much time has passed since then.
            if(doubleTapTimer > 0 && firstTapEnded == true) 
            {
                //It was the second tap!
                Debug.Log("Double tap!");
                firstTapEnded = false;
                OnDoubleTap();
            }
            else
            {
                //It was only the first tap.
                doubleTapTimer = doubleTapDuration; //Sets the double-tap timer to its max value, so it can begin counting down. If another tap is made before it hits zero, it will be considered a double-tap.
            }
        }
        else if(Input.touchCount == 0 && doubleTapTimer >= 0)   //If no taps, the timer begins counting down.
        {
            doubleTapTimer -= Time.deltaTime;

            if(doubleTapTimer <= 0f)    //If the timer hits zero, the script will stop checking for the "second tap" and go back to checking for the "first tap."
            {
                firstTapEnded = false;  //Sets this to false because the "first tap" did not result in a double-tap. This variable therefore needs to be cleared to prepare for the next "first tap."
                doubleTapTimer = 0f;    //Keeps the timer at zero until the player touches the screen again.
            }
        }
    }

    /// <summary>
    /// Called when a double-tap has been detected. Depending on what is being "tapped," the game will respond in different ways.
    /// </summary>
    void OnDoubleTap()
    {
        if(UAP_AccessibilityManager.GetCurrentFocusObject() != null)
        {
            string tagOfSelectedText = UAP_AccessibilityManager.GetCurrentFocusObject().gameObject.tag;

            if(tagOfSelectedText == "Dialogue choice")
            {
                choiceSelectedSound.Play();
                this.GetComponent<InkTextDisplay>().SelectDialogueChoice();

            }
            else if(tagOfSelectedText == "Return to menu button")
            {
                choiceSelectedSound.Play();
                this.GetComponent<VoiceOverNotificationTextManager>().OpenVoiceOverNotificationText();

            }
            else if(tagOfSelectedText == "Continue to next chapter button")
            {
                choiceSelectedSound.Play();
                this.GetComponent<InkTextDisplay>().ContinueToNextChapterButton();

            }
            else if(tagOfSelectedText == "Resume button")
            {
                choiceSelectedSound.Play();
                this.GetComponent<PauseManager>().StartOrStopPause();
            }
            else if(tagOfSelectedText == "Are you sure you want to clear progress button")
            {
                choiceSelectedSound.Play();
                this.GetComponent<PauseManager>().OpenAreYouSureScreen();
            }
            else if(tagOfSelectedText == "Confirm clear progress button")
            {
                choiceSelectedSound.Play();
                this.GetComponent<PauseManager>().ClearPlayerData();

            }
            else if(tagOfSelectedText == "Cancel clear progress button")
            {
                choiceSelectedSound.Play();
                this.GetComponent<PauseManager>().OpenMainPauseScreen();
            }
            else if(tagOfSelectedText == "Start game button")
            {
                choiceSelectedSound.Play();

                //Calls a function in InkTextDisplay.cs (which should be attached to the same Canvas gameObject as this script) telling it to begin displaying story content.
                this.GetComponent<InkTextDisplay>().BeginStory();

                //Tells PauseManager.cs (which should be attached to the same Canvas gameObject as this script) to start checking to see if the player makes the "pause" gesture.
                this.GetComponent<PauseManager>().enabled = true;
            }
        }
    }
}
