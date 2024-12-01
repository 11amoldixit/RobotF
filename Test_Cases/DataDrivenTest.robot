*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    XML
Resource    ../Test_Resources/Test_Keywords.resource

*** Test Cases ***
#############################################################################
TC:1 Data Driven Testing using Excel file
    [Tags]        DataDrivenTest_EXCEL1
#############################################################################
TC:2 Data Driven Testing using Excel file
    [Tags]        DataDrivenTest_EXCEL2
#############################################################################
TC:3 Data Driven Testing using XML file  
    [Tags]        DataDrivenTest_XML1
    Set Test Variable    ${Test_Case_Name}       DataDrivenTest_XML1
    File Should Exist     ${EXECDIR}\\Test_Data\\XML_TestData.xml        msg=Unable to find required XML file in directory , please check
    ${URL}        Extract Required Data from XML File        XML_TestData        ${Test_Case_Name}        URL
    ${Username}        Extract Required Data from XML File        XML_TestData        ${Test_Case_Name}        Username
    ${Password}        Extract Required Data from XML File        XML_TestData        ${Test_Case_Name}        Password
#############################################################################