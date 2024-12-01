*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${URL}                                            https://demo.automationtesting.in/Windows.html
${Open_New_Window_Locator}                        //button[@class="btn btn-primary"]
${Open_New_Tab_Locator}                            //button[@class="btn btn-info"]
${Open New Seperate Windows_TEXT_Loc}            //a[text()="Open New Seperate Windows"]

*** Test Cases ***

Handle_Tabs
    [Tags]    Window_Handle
    Set Selenium Speed    0.5s
    Open Browser    ${URL}    gc        options=add_experimental_option("detach", True)
    Maximize Browser Window
    Check window handle
    [Teardown]    Close All Browsers

*** Keywords ***

Custom_Click
    [Arguments]    ${Locator}    ${Timeout}=30s
    Log        Locator: ${Locator}
    Wait Until Page Contains Element    ${Locator}    ${Timeout}
    Click Element    ${Locator}

Check window handle
    Custom_Click        ${Open New Seperate Windows_TEXT_Loc}
    Custom_Click        ${Open_New_Window_Locator}
    ${Window_Names}        Get Window Titles
    Log    ${Window_Names}[1]
    Switch Window        title:${Window_Names}[1]
    Maximize Browser Window
    Page Should Contain    Selenium automates browsers. That's it!

Custom_Window_Open
    Execute Javascript    window.open(${URL})
    