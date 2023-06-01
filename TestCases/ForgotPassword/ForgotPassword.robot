*** Settings ***
Documentation       Test Case Login
Library             SeleniumLibrary
Resource            ../../PageObjects/LoginPage/LoginKW.robot
Resource            ../../PageObjects/ForgotpasswordPage/ForgotPasswordKW.robot
Resource            ../../PageObjects/Common/common.robot
Test Setup        Start  # Suitw Setup will run only once
Test Teardown      common.Close My Browser

*** Test Cases ***
Valid EMail
    tags
    sleep    1s
    Click Cookie
    Click On Link Login
    Click On Forgot Password Link
    send password reset link        sabree4u2@gmail.com

Invalid Email
    sleep    1s
    Click Cookie
    Click On Link Login
    Click On Forgot Password Link
    send password reset link        sabrxee4u2@gmail.com