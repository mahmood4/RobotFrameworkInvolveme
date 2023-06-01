*** Settings ***
Documentation       Test Case Login
Library             SeleniumLibrary
Resource            ../../PageObjects/LoginPage/LoginKW.robot
Resource            ../../PageObjects/Common/common.robot
Test Setup         common.Open My Browser
Test Teardown      common.Close My Browser
#Test Template      Test Login


*** Test Cases ***
Test Deleteuser
   sleep    3s
   Click On Link Signup / Login
   # Click On Button Login
 #  [Arguments]                         ${emailInput}       ${passwordInput}
   Enter Email                          hello1232@gmail.com  #amul.milk@gmail.com
   Enter Password                       Password123
   # Enter Password                      ${passwordInput}
   Click On Link Login
   And Click Delete Button
   And Click Continue Button