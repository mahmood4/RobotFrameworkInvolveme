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
01 Create workspace
    [Tags]  Create
       # sleep    3s
    Login to the Application
    create_workspace       test

02 Rename workspace
    [Tags]  Rename
    Login to the Application
    Rename workspace   Another test


03 Delete Workspace

    [Tags]  Delete
    Login to the Application
    Delete workspace   test

04. Total number of Existing Projects
    [Tags]  Exist
    Login to the Application
    ${ProjectsPage} =  Number of Projects in a Page
    ${WorkspacePage} =  Number of Projects from a workspace

    IF    ${ProjectsPage}==${WorkspacePage}
        log to console  "Test Passed"
    END


05 Start a new project
    [Tags]  NewP
    Login to the Application
    Start a new project    test


06 Search for an Existing project
    [Tags]  Sanity1
    Login to the Application
    Search an Existing Project   test


07 Search for an Non-Existing project
    [Tags]  SanityN
    Login to the Application
    Search an Non-Existing Project   Hello


08 Cancel project deletion
    [Tags]  SanityC
    Login to the Application
    Cancel a project deletion   Cancel


09 project deletion
    [Tags]  SanityD
    Login to the Application
    Cancel a project deletion   Delete