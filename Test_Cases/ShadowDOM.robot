*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${URL}            https://selectorshub.com/xpath-practice-page/
${F_Name_InputBox_Loc}        //input[@name="test"]

*** Test Cases ***
ShadowDOM_Check
    SD_Launch Given URL
    Check_Input

*** Keywords ***

SD_Launch Given URL
    Set Selenium Speed    0.5s
    Open Browser    ${URL}        headlesschrome
    Maximize Browser Window
    Wait Until Page Contains    Inspect this element, you will see comment just below the html of this element in DOM

Check_Input
    Wait Until Page Contains Element        ${F_Name_InputBox_Loc}        30s
    Wait Until Element Is Visible            ${F_Name_InputBox_Loc}        30s
    # Input Text    ${F_Name_InputBox_Loc}        Amolchandra
    Assign Id To Element    ${F_Name_InputBox_Loc}        AMOL
    Execute Javascript    document.getElementById('AMOL').value="AMOLCHANDRA"
    Capture Page Screenshot        F_NAME.png