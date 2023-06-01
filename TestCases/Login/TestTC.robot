*** Settings ***
Library   SeleniumLibrary
Resource  ../../PageObjects/Common/common.robot
Resource  ../../PageObjects/ContactUS/ContactKW.robot
Resource  ../../PageObjects/LoginPage/LoginKW.robot
Test Setup         common.Open My Browser
Test Teardown      common.Close My Browser

*** Test Case ***
Click the Test cases link.
    [Documentation]     Check links opening in other tab when click "Add New Category" button.
     # Enter Text In Search            ${searchBoxField}
   #  sleep    5s
    Click On TestCases Btn
    Get Text from locator112

