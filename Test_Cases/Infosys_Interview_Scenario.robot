*** Settings ***

Library		SeleniumLibrary

*** Variables ***

${Required_URL}
${Username_Input_Box_Loc}		//input[contains(@id,"Username")]
${Password_Input_Box_Loc}		//input[contains(@id,"Password")]
${Login_Btn_Loc}				//button[contains(@class,"Login")]

*** Test Cases ***

Verify Login Page
	[Tags]		Login_Page
	Launch Given URL
	Verify Requirements

*** Keywords ***

Launch Given URL
	Open Browser		${Required_URL}		gc
	maximize browser window
	wait until page contains		Login		30s

Verify Requirements
	wait until page contains element		${Username_Input_Box_Loc}		30s
	Input Text		${Username_Input_Box_Loc}		AMOLCHANDRA
	Input Text		${Password_Input_Box_Loc}		******
	Click Element	${Login_Btn_Loc}
	${Login_Status}		Run Keyword and Return Status		wait until page contains		Overview		30s
	IF		${Login_Status}
		Log To Console		\n ** Login Successful! **
	ELSE
		FAIL		"LOGIN FAILED"
	END