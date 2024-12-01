*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Slider_URL}        https://www.amazon.com/
${Slider_ID}    //input[@type="range"]
${Battery_Dec}        //span[text()="Battery Description"]

*** Test Cases ***

check slider
    [Tags]    Slider
    Set Selenium Speed        1
    launch browser
    search and scroll
    
*** Keywords ***

launch browser
    Open Browser    ${Slider_URL}        gc        options=add_experimental_option("detach", True)
    Maximize Browser Window

search and scroll
    Wait Until Page Contains Element    id=twotabsearchtextbox        30s
    Input Text    id=twotabsearchtextbox        iphone16
    Press Keys    None    ENTER
    Wait Until Page Contains Element    ${Battery_Dec}        30s
    custom scroll        ${Battery_Dec}

custom scroll
    [Arguments]    ${Loc}
    ${X}    Get Horizontal Position    ${Loc}
    ${Y}    Get Vertical Position    ${Loc}
    Execute Javascript        window.scrollTo(${X}, ${Y}-100)