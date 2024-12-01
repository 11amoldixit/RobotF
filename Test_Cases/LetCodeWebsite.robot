*** Settings ***

Resource    ../Test_Resources/Test_Keywords.resource
Suite Setup    Set Selenium Speed    0.5s
*** Test Cases ***
#############################################################################
Input Practice Website Automation
    [Tags]    Input
    [Documentation]    Input in Different Ways Trial Test Case - Amol
    Launch Required URL in Chrome Browser            https://letcode.in/test
    Navigate to Input section in demo website
    Start Input Practice
#############################################################################
Button Clicking Practice Website Automation
    [Tags]    Button
    [Documentation]    Button Clicking Practice Website Automation
    Launch Required URL in Chrome Browser            https://letcode.in/test
    Navigate to Buttons section in demo website
    Start Buttons Practice
    [Teardown]    Run Keyword If Test Passed    Close All Browsers
#############################################################################
List Handeling Practice Website Automation
    [Tags]    DropDown
    Launch Required URL in Chrome Browser            https://letcode.in/test
    Navigate to DropDown Section in demo website
    Select Dropdown Practice
    [Teardown]        Run Keyword If Test Passed    Close All Browsers
#############################################################################
Get Slice From List
    [Tags]    Slice
    ${My_List}        Create List    Amol    Rajesh    Dixit
    ${Slice}    Get Slice From List            ${My_List}        start=0        end=None
#############################################################################
Shadow DOM
    [Tags]    ShadowDom
    Launch Required URL in Chrome Browser        https://letcode.in/shadow
    Input Text in SHADOW DOM
    
#############################################################################
Max Keywords Limit
    [Tags]    Max_Limit
    Check Max Keywords Limit
    
Signature Trial
    [Tags]    Signature
    Launch Required URL in Chrome Browser            https://www.sunrise.ch/en/mobile/mobile-subscription
    Set Selenium Speed    0.3s
    Mouse Move Relative To        //canvas[@class="Signature_signatureCanvas__qHvfU "]
    Click Element By JS        (//span[text()="Proceed to checkout"])[3]
    Click Element By JS        id=guest
    Click Element By JS        //div[text()="Keep my number"]
    Click Element By JS        id=Woman
    Input Text    name=firstname            wersdr
    Input Text    name=lastname            askiuy
    Input Text    name=email                simmi782@gmail.com
    Input Text    name=phonenumber        0797876251
    Input Text    name=Date of birth        12.12.1988
    Input Text    id=idnumber            12345
    Input Text    name=Expiry date        12.12.2029
    Sleep    3s
    Click Element By JS        //b[text()="Save & continue"]
    Click Element By JS        //div[text()="SIM card"]
    Click Element By JS        //div[text()="Subscription"]
    Click Element By JS        name=currentnumber
    Input Text        name=currentnumber            91817276
    Sleep    10s
    Mouse Move Relative To        //canvas[@class="Signature_signatureCanvas__qHvfU "]
