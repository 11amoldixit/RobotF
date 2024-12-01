*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                https://www.saucedemo.com/
${USERNAME_Loc}       //input[@placeholder="Username"]
${JS_PATH}            document.querySelector("#login-button")
${XPATH}              //*[@id="login-button"]

*** Test Cases ***

Cover_Element_Check
    Set Selenium Speed    1
    Launch Browser
#    Check Cover Element
    custom click        ${XPATH}

*** Keywords ***

Launch Browser
    Open Browser    ${URL}        gc        options=add_experimental_option("detach", True)
    Maximize Browser Window

Check Cover Element
    Wait Until Page Contains Element        ${USERNAME_Loc}        30s
    Cover Element        ${USERNAME_Loc}

check js path click
    ${JS_RETURN}        Execute Javascript    return ${JS_PATH}
    ${Web_Ele}        Get Webelement    ${JS_RETURN}
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${Web_Ele}

custom click
    [Arguments]    ${LOC}
    Wait Until Page Contains Element    ${LOC}        30s
    ${WEB_ELEMENT}    Get Webelement    ${LOC}
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${WEB_ELEMENT}