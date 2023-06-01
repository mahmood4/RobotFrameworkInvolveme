*** Settings ***
Library   SeleniumLibrary
Resource            ../../PageObjects/LoginPage/LoginKW.robot
Resource            ../../PageObjects/Register/RegisterKW.robot
Resource            ../../PageObjects/Common/common.robot
Test Setup         common.Open My Browser
Test Teardown      common.Close My Browser


##### ***********  To run a particular Test robot --test  TC2 RegisterTC.robot

*** Test Case ***
TC1
    [Documentation]     Register a New User with the email ID.
    Click On Link Signup / Login
    Enter Name                          Hello
    Enter Email Address                 hello1232@gmail.com
    Click SignUp Button

    Click Title RadioButton
    Enter Password To Register      Password123
    Enter First Name    Amul
    Enter Last Name     milk
    Enter Address       Eglinton
    Enter State         ON
    Enter City          Scarborough
    Enter ZipCode       M1K2P2
    Enter MobNum        1234567
    And Click Create Account
    Sleep  2s
   # Click On Link Logout

TC2
    [Documentation]     Register a Existing User with the email ID.
    Click On Link Signup / Login
   # Click On Button Login
 #   [Arguments]                         ${NameInput}       ${EmailAddressInput}
    Enter Name                          Hello
    Enter Email Address                 hello1232@gmail.com
    Click SignUp Button
    Get Text from locator



