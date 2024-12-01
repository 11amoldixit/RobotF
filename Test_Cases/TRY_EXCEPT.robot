*** Settings ***

Library    SeleniumLibrary

*** Test Cases ***

Try_Except_Demo
    [Tags]    TRY_EXCEPT
    Keyword_TRY_EXCEPT
    
*** Keywords ***

Keyword_TRY_EXCEPT
    Open Browser    https://demo.automationtesting.in/Windows.html        gc
    Maximize Browser Window
    TRY
        Wait Until Page Contains    AMOLDIXIT        error=Given Text Did Not Appeared
    EXCEPT        Given Text Did Not Appeared
        Log    EXCEPT TRIAL SUCCESS
    END