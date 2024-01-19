*** Settings ***
Documentation       Test Case Login
Library             SeleniumLibrary
#Library             DataDriver      ../../TestData/LoginData.xlsx     sheet_name=Data
Resource            ../../PageObjects/LoginPage/LoginKW.robot
Resource            ../../PageObjects/Common/common.robot
Test Setup        Start  # Suitw Setup will run only once
#Test Setup         common.Open My Browser
Test Teardown      common.Close My Browser
#Test Template      Test Login

*** Test Cases ***
Test Login
    sleep    1s
    Click Cookie
    Click On Link Login
    Enter Email                          sabree4u2@gmail.com
    Enter Password                       Nausheen4Only
    Click On Sign in button
    Is Text Displayed     ${SCREEN_TEXTS["ws_page_title"]}
    sleep   1s
    Click On Link Logout
