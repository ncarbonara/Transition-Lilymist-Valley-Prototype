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

    //public Button buttonPrefab;
    public Text selectableTextPrefab;
    public string startGameButtonText;

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

        UAP_AccessibilityManager.SelectElement(notificationText.gameObject);    //Directs focus to the notification text, so that it starts being read automatically.

        //Creates a "start game" button
        Text startGamePressableGameObject = Instantiate(selectableTextPrefab) as Text;  //Instantiates a "pressable text gameObject." (Our substitute for a button)
        startGamePressableGameObject.gameObject.tag = "Start game button";
        startGamePressableGameObject.text = startGameButtonText;
        startGamePressableGameObject.transform.SetParent(this.transform, false);    //Parents the pressable gameObject to the canvas (this gameObject).
    }
}
