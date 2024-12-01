*** Test Cases ***

Slice_Check
    [Tags]    Slice_Check
    ${Slice_1}        Convert To String    AMOLDIXIT
    ${Slice_Part}    Set Variable    ${Slice_1}[0 : 4]
    Log To Console    ${Slice_Part}
