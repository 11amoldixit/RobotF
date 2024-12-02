*** Settings ***

*** Variables ***
${Airtel_URL}                                https://www.airtel.in/
${Airtel:Cache_GotIt_Button}                xpath=//span[text()="Got it"]
${Airtel:Prepaid_Button}                    xpath=//label[text()="Prepaid"]

#############################################################################
######### Locators REQUIRED FOR Input Practice Website Automation ###########
#############################################################################
${INPUT_Edit_Loc}                        //a[text()='Edit']
${INPUT_Enter_Name_Loc}                //input[@placeholder="Enter first & last name"]
${INPUT_Append_Text_Loc}                //input[@value="I am good"]
${INPUT_Get_Textbox_Loc}                (//input[@type="text"])[3]
${INPUT_Clear_Box_Loc}                    id:clearMe
${INPUT_Disabled_Loc}                    id:noEdit
${INPUT_Read_Only_Loc}                    id:dontwrite
##############################################################
${INPUT_Button_Click_Loc}                xpath://a[text()="Click"]
${INPUT_GoTo_Home_Btn_Loc}                id:home
##############################################################
${Dropdown_Btn_Loc}                //a[@href="/dropdowns"]
${Dropdown_List_Loc_1}            id:fruits
${Dropdown_List_Loc_2}            id:superheros
${Dropdown_List_Loc_3}            id:lang
${Dropdown_List_Loc_4}            id:country