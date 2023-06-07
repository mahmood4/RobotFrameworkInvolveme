*** Settings ***
Documentation       Workspace
Library             SeleniumLibrary
Resource            ../../PageObjects/LoginPage/LoginKW.robot
Resource            ../../PageObjects/Workspaces/WorkspaceKW.robot
Resource            ../../PageObjects/Common/common.robot
Test Setup        Start  # Suitw Setup will run only once
Test Teardown      common.Close My Browser

####robot -i Create -v browser:firefox WorkspaceTC.robot

*** Test Cases ***
02 Delete Workspace

    [Tags]  Delete
    Login to the Application
    Delete Demoworkspace   test
