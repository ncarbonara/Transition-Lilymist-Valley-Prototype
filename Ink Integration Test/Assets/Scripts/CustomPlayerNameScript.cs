using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// This script keeps track of the custom name the player enters, and sets it as an Ink variable in the story. It's attached to the "Text Input Field" prefab.
/// </summary>
public class CustomPlayerNameScript : MonoBehaviour
{
    string customPlayerName;

    // Update is called once per frame
    void Update()
    {
        customPlayerName = this.GetComponent<InputField>().text;
        this.GetComponentInParent<InkTextDisplay>().UpdatePlayerName(customPlayerName);
    }
}
