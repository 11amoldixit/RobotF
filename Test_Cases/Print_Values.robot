*** Settings ***
Documentation		Test Suite For Printing Row Values
Library				SeleniumLibrary
# Test Setup			Set Selenium Speed		1s

*** Variables ***
${Trial_URL}			https://www.hyrtutorials.com/p/add-padding-to-containers.html
${Default_WaitTime}		30s
${Row_Xpath_Locator}	xpath=//table[@id="contactList"]/tbody/tr[2]/td
${Chang_Salary_Xpath_Locator}		//table[@id="contactList"]/tbody/tr[3]/td[text()="Francisco Chang"]/following::td[2]

*** Test Cases ***

Print Column Values for Given Row Element
	[Documentation]		Print Column Values for Given Row Element
	[TAGS]				Print_Salary
	Navigate To Element		${Trial_URL}
	User Defined KW for Printing Column Values
	[TearDown]			Close All Browsers

*** Keywords ***

Navigate To Element
	[Documentation]		Navigate To Element
	[ARGUMENTS]			${Required_URL}
	Open Browser		${Required_URL}		gc
	Maximize Browser Window
	Wait Until Page Contains		Register		${Default_WaitTime}

User Defined KW for Printing Column Values
	[Documentation]		User Defined KW for Printing Column Values
	Wait Until Page Contains Element		${Chang_Salary_Xpath_Locator}		${Default_WaitTime}
	${Salary}		Get Text		${Chang_Salary_Xpath_Locator}
	Log To Console		${Salary}