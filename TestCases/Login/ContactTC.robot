*** Settings ***
Documentation       Test Case Login
Library             SeleniumLibrary
Resource            ../../PageObjects/ContactUS/ContactKW.robot
Resource            ../../PageObjects/Common/common.robot
Test Setup         common.Open My Browser
Test Teardown      common.Close My Browser


*** Test Cases ***
Test Contact
   # sleep    3s
    Click On Button Contact Btn
   # Click On Button Login
    Enter Name for contact     Test123
    Enter Email for contact     test1234@gmail.com
    Enter Subject               Testing123
    Enter Message               "we are plannig to hire"
    Click to upload file
    Click On Button Submit
    Handle Alert

