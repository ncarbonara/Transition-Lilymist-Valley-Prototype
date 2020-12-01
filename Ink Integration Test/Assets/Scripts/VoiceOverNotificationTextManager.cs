using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Prints welcome/tutorial text when the app is opened. Is attached to the Canvas gameObject in GameScene.
/// </summary>
public class VoiceOverNotificationTextManager : MonoBehaviour
{
    public Text textPrefab;
    public string welcomeText;
    public string turnOnVoiceOverText;
    public string feelButtonsBelowText;
    public string pauseTooltipText;
    public string pleaseBeginText;

    public Button buttonPrefab;
    public string pressToContinueText;

    // Start is called before the first frame update
    void Start()
    {
        OpenVoiceOverNotificationText();
    }

    /// <summary>
    /// Opens the welcome/tutorial text that appears at the start of the game, as well as after the player completes a chapter.
    /// </summary>
    public void OpenVoiceOverNotificationText()
    {
        this.GetComponent<PauseManager>().enabled = false;  //Ensures the player can't pause when they're in the start screen.

        this.GetComponent<InkTextDisplay>().EraseUI();  //Tells the InkTextDisplay script (also attached to the Canvas) to clear any onscreen elements.

        Text notificationText = Instantiate(textPrefab) as Text;
        AccessibleLabel label = notificationText.gameObject.AddComponent(typeof(AccessibleLabel)) as AccessibleLabel;   //Adds an accessible label to the text.
        notificationText.transform.SetParent(this.transform, false);

        //Prints each of the different tooltip strings one after the other, with spaces between them.
        notificationText.text = "<i>" + welcomeText + "\n\n" + turnOnVoiceOverText + "\n\n" + feelButtonsBelowText + "\n\n" + pauseTooltipText + "\n\n" + pleaseBeginText + "</i>";

        Button nextSceneButton = Instantiate(buttonPrefab) as Button;
        nextSceneButton.gameObject.AddComponent(typeof(AccessibleButton));  //Adds an accessible button component to the button.
        Text buttonText = nextSceneButton.GetComponentInChildren<Text>();
        buttonText.text = pressToContinueText;  //Adds in desired text for what the "press to continue" button should say.
        nextSceneButton.transform.SetParent(this.transform, false);

        nextSceneButton.onClick.AddListener(delegate
        {
            //Calls a function in InkTextDisplay.cs (which should be attached to the same Canvas gameObject as this script) telling it to begin displaying story content.
            this.GetComponent<InkTextDisplay>().BeginStory();

            //Tells PauseManager.cs (which should be attached to the same Canvas gameObject as this script) to start checking to see if the player makes the "pause" gesture.
            this.GetComponent<PauseManager>().enabled = true;
        });

        UAP_AccessibilityManager.SelectElement(notificationText.gameObject);    //Directs focus to the notification text, so that it starts being read automatically.
    }
}
