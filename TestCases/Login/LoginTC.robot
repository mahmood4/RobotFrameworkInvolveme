*** Settings ***
Documentation       Test Case Login
Library             SeleniumLibrary
Resource            ../../PageObjects/LoginPage/LoginKW.robot
Resource            ../../PageObjects/Common/common.robot
Test Setup        Start  # Suitw Setup will run only once
Test Teardown      common.Close My Browser

*** Test Cases ***
Test Login
    sleep    1s
    Click Cookie
    Click On Link Login
    Enter Email                          sabree4u2@gmail.com
    Enter Password                       Nausheen4Only
    Click On Sign in button
    Is Text Displayed     ${SCREEN_TEXTS["ws_page_title"]}

Test Login N Logout
    [Tags]  Login
    sleep    1s
    Click Cookie
    Click On Link Login
    Enter Email                          sabree4u2@gmail.com
    Enter Password                       Nausheen4Only
    Click On Sign in button
    sleep    1s
    Click On Link Logout
 #   Is Text Displayed     ${SCREEN_TEXTS["ws_page_title"]}

Test Invalid Login
    [Tags]  InvalidL
    sleep    1s
    Click Cookie
    Click On Link Login
    Enter Email                          sabree4u2@gmail.com
    Enter Password                       Nauasheen4Only
    Click On Sign in button
    Is Text Displayed     ${SCREEN_TEXTS["errorr_message"]}
    #Click On Link Logout


#Test Deleteuser
#    sleep    3s
#    Click On Link Signup / Login
#   # Click On Button Login
#   [Arguments]                         ${emailInput}       ${passwordInput}
#    Enter Email                          ${emailInput}
#    Enter Password                       ${passwordInput}
#   # Enter Password                      ${passwordInput}
#    Click