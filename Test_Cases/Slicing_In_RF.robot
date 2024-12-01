*** Settings ***

Library    SeleniumLibrary
Library    Collections

*** Variables ***

*** Test Cases ***

Slicing with FOR Loop
    [Tags]    Slice_LOOP
    ${List}    Create List    1    2    3    4    5    6    7
    ${Reversed_List}    Create List
    ${Length}    Get Length    ${List}
    FOR    ${Slice}    IN RANGE    ${Length}
        ${Ele}    Evaluate    ${Length} - ${Slice}
        Append To List    ${Reversed_List}    ${Ele}
        Log To Console    ${Reversed_List}
        Log    ${Reversed_List}
    END

Slicing with Slicing Method in py
    [Tags]    Slicing_Slicing
    ${List}    Create List    1    2    3    4    5    6    7    8    9    10
    ${Reversed_List}    Create List
    ${Reversed_List}    Convert To String    ${List}[::-1]
#    Log To Console    \n ${Reversed_List}
    ${Sliced_L1}    Convert To String    ${List}[:5:3]