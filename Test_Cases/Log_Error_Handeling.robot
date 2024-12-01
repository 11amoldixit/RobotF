*** Settings ***
Library     SeleniumLibrary
Library     Process

*** Variables ***


*** Test Cases ***
Log File Error Handeling
    [Documentation]     Practice KW
    [Tags]      Log_Error
    FOR     ${AMOL}     IN RANGE        1       10
        Log     Amolchandra_Dixit       level=ERROR
    END    
    [Teardown]      Post-process Logs and Regenerate Reports    output.xml

*** Keywords ***
Post-process Logs
    [Arguments]     ${output_xml}
    Run Process     python      post_process_logs.py        ${output_xml}

Post-process Logs and Regenerate Reports
    [Arguments]     ${output_xml}
    Post-process Logs           output.xml
    Run Process     rebot       output.xml