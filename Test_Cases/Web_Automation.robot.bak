*** Settings ***
Resource    ../Test_Resources/Test_Keywords.resource
Library    SeleniumLibrary

*** Test Cases ***
#############################################################################
Airtel Demo_1
    [Tags]    TestCase_1
    Launch Required URL in Chrome Browser        ${Airtel_URL}
    Airtel Demo : Keyword 1
#############################################################################
Airtel Demo_2
    [Tags]    TestCase_2
    Launch Required URL in Chrome Browser        ${Airtel_URL}
    Airtel Demo : Keyword 2
#############################################################################
TC:4 Log : Builtin Keyword
    [Tags]    Log
    Log    Amolchandra        level=INFO        console=True
    @{Log_List}        Create List    AmolChandra    Rajesh    Dixit    Sheela    Mandlik
    Log Many    @{Log_List}
#############################################################################
Handle Tabbed Windows & Browsers
    [Tags]    Tabs
    [Documentation]    Handle Tabbed Windows & Browsers
    Set Selenium Speed    1s
    Launch Required URL in Chrome Browser    https://www.hyrtutorials.com/p/window-handles-practice.html
    Scroll Element Into View    id=newTabBtn
    Click Element    id=newTabBtn
    Switch Tabs        1
    Click Element By JS              id=alertBox
    Switch Tabs        0
#############################################################################
Handle Tabbed Windows & Browsers
    [Tags]    Windows
    [Documentation]    Handle Tabbed Windows & Browsers
    Launch Required URL in Chrome Browser    https://www.hyrtutorials.com/p/window-handles-practice.html
    Click Element    id=newWindowBtn
    Switch Browser    1
    Get Window Titles
    Sleep    5s
    Switch Browser    2
    Get Window Titles
#############################################################################
Console Colours_1
    [Tags]    Color
    Log To Console With Colour        Amolchandra Rajesh Dixit        30
Console Colours_2
    [Tags]    Color
    Log To Console With Colour        Amolchandra Rajesh Dixit        31
Console Colours_3
    [Tags]    Color
    Log To Console With Colour        Amolchandra Rajesh Dixit        32
Console Colours_4
    [Tags]    Color
    Log To Console With Colour        Amolchandra Rajesh Dixit        33
Console Colours_5
    [Tags]    Color
    Log To Console With Colour        Amolchandra Rajesh Dixit        34
Console Colours_6
    [Tags]    Color
    Log To Console With Colour        Amolchandra Rajesh Dixit        35
Console Colours_7
    [Tags]    Color
    Log To Console With Colour        Amolchandra Rajesh Dixit        36
Console Colours_8
    [Tags]    Color
    Log To Console With Colour        Amolchandra Rajesh Dixit        37
Console Colours_9
    [Tags]    Color
    Log To Console With Colour        Amolchandra Rajesh Dixit        4
Console Colours_10
    [Tags]    Color
    Log To Console With Colour        Amolchandra Rajesh Dixit        41
Console Colours_11
    [Tags]    Color
    Log To Console With Colour        Amolchandra Rajesh Dixit        7
Console Colours_12
    [Tags]    Color
    Log To Console With Colour        Amolchandra Rajesh Dixit        5
#############################################################################