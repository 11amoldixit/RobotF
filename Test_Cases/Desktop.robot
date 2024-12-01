*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${URL}        https://tutorialsninja.com/demo/

*** Test Cases ***

Launch Required URL
    [Tags]        Desktop
    Open Browser    ${URL}        gc
    Maximize Browser Window
    Wait Until Page Contains Element    (//a[@class="dropdown-toggle"])[2]
    Mouse Over    (//a[@class="dropdown-toggle"])[2]
    Click Element        //a[text()="Show AllDesktops"]