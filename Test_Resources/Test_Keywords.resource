*** Settings ***
Library            SeleniumLibrary
Library            Collections
Resource            Test_Variables.resource
Library            OperatingSystem

*** Variables ***
${Timeout}        30s
*** Keywords ***
#############################################################################
################### KEYWORDS REQUIRED FOR ALL TEST CASES ###################
#############################################################################
Switch Tabs
    [Arguments]                ${Window__Number}
    [Documentation]            Switch Tabs User Defined Keyword
    ${Window_Title}            Get Window Titles
    ${Required__Window}        Get From List    ${Window_Title}    ${Window__Number}
    Switch Window              ${Required__Window}
    
Click Element By JS
    [Documentation]        Click Element By JS_Amol
    [Arguments]            ${Locator}
    Wait Until Page Contains Element            ${Locator}        ${Timeout}
    Wait Until Element Is Enabled                ${Locator}        ${Timeout}
    ${Web_Element}        Get Webelement        ${Locator}
    Execute Javascript        arguments[0].click();        ARGUMENTS            ${Web_Element}

Extract Required Data from XML File
    [Documentation]    this keyword extracts the required data from xml file
    [Arguments]        ${XML_File_Name}        ${Test_Case_Name}        ${Required_Data_Variable}
    ${XML_Data}        Parse Xml        ${EXECDIR}\\Test_Data\\${XML_File_Name}.xml
    ${Required_Variable_Value}    Get Element Text    ${XML_Data}    .//${Test_Case_Name}/${Required_Data_Variable}
    [Return]    ${Required_Variable_Value}
    
Log To Console With Colour
    [Documentation]    This Keyword Logs the given message to console with different colours
    [Arguments]        ${msg to print}        ${Required_Colour_Number}
    # PASS Arguments as an integer as per below explanation / requirement
    # 30 for BLACK , 31 for RED , 32 for GREEN , 33 for YELLOW , 34 for BLUE , 35 for VOILET , 36 for SKY BLUE , 37 for WHITE
    # 4 FOR UNDERSCORE , 41 for RED HIGHLIGHTED TEXT , 7 for GREY HIGHLIGHTED TEXT , 5 for GREY - blinking
    ${message}=        Evaluate             "\\033[${Required_Colour_Number}m${msg to print}\\033[0m"
    Log To Console        ${message}
#############################################################################
#############################################################################
Launch Required URL in Chrome Browser
    [Documentation]        Launches given URL in gc
    [Arguments]        ${URL}
    Open Browser    ${URL}        gc        options=add_experimental_option("detach", True)
    Maximize Browser Window

Airtel Demo : Keyword 1
    [Documentation]         Airtel Demo : Keyword 1
    Click Element            ${Airtel:Cache_GotIt_Button}
    Mouse Over                ${Airtel:Prepaid_Button}
    Capture Page Screenshot    Airtel.png
    
Airtel Demo : Keyword 2
    [Documentation]    Airtel Demo : Keyword 2
    Sleep    2s
#############################################################################
Check Output from excel sheet1
    [Arguments]    ${Username}        ${Password}
    Log To Console        \n \nUsername : ${Username} , Password : ${Password}

Check Output from excel sheet2
    [Arguments]    ${Month}        ${Salary}        ${PF}
    #Run Keyword If    ${Fail}'=='FAIL'        Fail        msg=Test Case Failed
    Log To Console        \nMonth : ${Month} , Salary Credited : ${Salary} , PF deducted : ${PF}
#############################################################################
#############################################################################
######### KEYWORDS REQUIRED FOR LetCode Website Automation ###########
#############################################################################
Navigate to Input section in demo website
    [Documentation]    This Keyword Navigates to Input section in demo website
    Wait Until Page Contains        You can practice automation API/framework like Selenium, Protractor, Playwright, WebDriver IO, Cypress & etc
    Scroll Element Into View        ${INPUT_Edit_Loc}
    Click Element                    ${INPUT_Edit_Loc}
    Wait Until Page Contains        Input

Navigate to Buttons section in demo website
    [Documentation]    Navigate to Buttons section in demo website
    Wait Until Page Contains        You can practice automation API/framework like Selenium, Protractor, Playwright, WebDriver IO, Cypress & etc
    Scroll Element Into View        ${INPUT_Button_Click_Loc}
    Click Element                ${INPUT_Button_Click_Loc}
    
Navigate to DropDown Section in demo website
    [Documentation]    Navigate to DropDown Section in demo website
    Wait Until Page Contains        You can practice automation API/framework like Selenium, Protractor, Playwright, WebDriver IO, Cypress & etc
    Scroll Element Into View        ${Dropdown_Btn_Loc}
    Click Link                    ${Dropdown_Btn_Loc}
############################################
Start Input Practice
    [Documentation]    Keyword to Start Input Practice
    Input Text                        ${INPUT_Enter_Name_Loc}        Amolchandra Dixit
    Input Text                        ${INPUT_Append_Text_Loc}        text= , What's about you ?        clear=False
    Press Keys                        None        TAB
    ${Text_Inside_Box}                Get Element Attribute                ${INPUT_Get_Textbox_Loc}        value
    Log To Console                    Text_Inside_Box is :- ${Text_Inside_Box}
    Scroll Element Into View            id:dontwrite
    Clear Element Text                ${INPUT_Clear_Box_Loc}
    Element Should Be Disabled        ${INPUT_Disabled_Loc}
    Element Should Be Disabled        ${INPUT_Read_Only_Loc}
    Log    Input Practice is Completed        level=WARN
############################################
Start Buttons Practice
    [Documentation]    Keyword to Start Buttons Practice
    Click Element            ${INPUT_GoTo_Home_Btn_Loc}
    Go Back
    ${Horizontal Location}        Get Horizontal Position        id=position
    ${Vertical_Location}          Get Vertical Position          id=position
    Log To Console        Required element location on current webpage is :- X = ${Horizontal Location} , Y = ${Vertical_Location}
    ${bgcolor}    Execute Javascript        return document.defaultView.getComputedStyle(document.getElementById("color"),null)['background-color']
    Log To Console              What is my color? :- ${bgcolor}
    ${Element_Size}        Get Element Size            id:property
    Create List    ${Element_Size}
    ${Tall}        Get From List    ${Element_Size}        0
    ${Fat}        Get From List    ${Element_Size}        1
    Log To Console    Height :- ${Tall} , Width :- ${Fat}.
############################################
Select Dropdown Practice
    [Documentation]        Select Dropdown Practice
    Select From List By Value        ${Dropdown_List_Loc_1}        1
    Select From List By Label        ${Dropdown_List_Loc_1}        Pine Apple
    Scroll Element Into View         ${Dropdown_List_Loc_4}
    Capture Page Screenshot            DropDown.png
    #Select From List By Index        ${Dropdown_List_Loc_2}        10
    #Select From List By Value        ${Dropdown_List_Loc_2}        bw
    #Select From List By Label        ${Dropdown_List_Loc_2}        Ghost Rider
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight);
    Select From List By Value        ${Dropdown_List_Loc_3}        sharp
    ${Language__List}                Get List Items            ${Dropdown_List_Loc_3}
    ${Language_List}                Create List             ${Language__List}
    Log To Console With Colour        ${Language_List}        35
    Select From List By Value        ${Dropdown_List_Loc_4}        India
    ${Selected_label}        Get Selected List Label        ${Dropdown_List_Loc_4}
    Log To Console With Colour        ${Selected_label}        31
############################################
Input Text in SHADOW DOM
    [Documentation]    Input Text in SHADOW DOM
    Execute Javascript    return document.querySelector("#open-shadow").shadowRoot.querySelector("#fname")

############################################

Check Max Keywords Limit
    [Documentation]    Check Max Keywords Limit
    FOR    ${AMol}        IN RANGE    1    2
        Next Loop
    END

Next Loop
    [Documentation]    Next Loop
    FOR    ${Raj}        IN RANGE    1    2
        Next Loop
    END