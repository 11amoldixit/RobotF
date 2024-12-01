*** Settings ***

Library		SeleniumLibrary
Library		XML

*** Variables ***


*** Test Cases ***

Get Test Data From XML File
	[TAGS]		TD_XML
	Parse XML File To Get Data

*** Keywords ***

Parse XML File To Get Data
	${XML_PARSED_DATA}		Parse XML		${EXECDIR}/Test_Data/XML_TD.xml
	${Attribute_1}		Get Element Text		${XML_PARSED_DATA}		Test_Case_1/Username