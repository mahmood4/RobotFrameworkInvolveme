#### robot -i Create -v browser:chrome  WorkspaceTC.robot
#####robot -i Create -v browser:firefox WorkspaceTC.robot

*** Settings ***
Documentation       Keyword Login page Ecommerces Anhtester
Library             SeleniumLibrary
Library             String
Library             DateTime
Variables           WorkspaceUI.py
Resource            ../common/common.robot

*** Variables ***
${FILE_TO_UPLOAD}   Sample.jpg

*** Keywords ***
create_workspace
     sleep  2s
     wait until page contains element    ${RATING}
     common.Click For Element       ${RATING}
     sleep  2s
     common.Click For Element         ${CREATE_NEW_WORKSPACE_BUTTON}
     [Arguments]                      ${nameC}

     ${before}=    Get Count of Elements   ${WORKSPACE_LIST}
     sleep  1s
     log to console        ${before}
     sleep  1s
     ${date}=  Get Current Date    UTC      exclude_millis=yes
#      ${plus14}=  Add Time To Date      ${date}      14 days
      #${future}   Convert Date      ${date}      result_format=%a %B %d %H:%M:%S UTC %Y
     ${future}   Convert Date      ${date}      result_format=%H_%M
     Log      ${future}      console=yes
     common.Input For Text            ${NEW_WORKSPACE_NAME_FIELD}         ${nameC}${future}
     common.Click For Element         ${CONFIRMATION_BUTTON}
     sleep  2s
     ${after}=    Get Count of Elements    ${WORKSPACE_LIST}
     log to console        ${after}

Rename workspace
   sleep    2s
   @{my_list}=    Get Webelements    WORKSPACE_LIST
   FOR    ${element}    IN    @{my_list}
        log to console   ${element}
   END
   common.Click For Element     ${WORKSPACE_EDIT_BUTTON}
   common.Click For Element     ${RENAME_WORKSPACE_BUTTON}

    [Arguments]                 ${MessageC}
    common.Input For Text       ${RENAME_FIELD}      ${MessageC}
    common.Click For Element     ${CONFIRMATION_BUTTON}
#   common.Click For Element     ${WORKSPACE_EDIT_BUTTON}

Delete Demoworkspace
   sleep    2s
   @{my_list}=    Get Webelements    WORKSPACE_LIST
 #  FOR    ${element}    IN    @{my_list}
 #       log to console   ${element}
 #  END

   common.Click For Element     ${WORKSPACE_EDIT_BUTTON}
   common.Click For Element     ${DELETE_WORKSPACE_BUTTON}
   ${text}=   Get Element Attribute    ${DELETE_WORKSPACE_FIELD}   placeholder
   log to console   ${text}
   common.Input For Text       ${DELETE_WORKSPACE_FIELD}      ${text}
   common.Click For Element     ${CONFIRMATION_BUTTON}


Delete workspace
   sleep    2s
   [Arguments]                      ${WorkspaceName}
   @{my_list}=    Get Webelements    ${WORKSPACE_LIST}
    wait until page contains element    ${RATING}
    common.Click For Element       ${RATING}
   FOR    ${element}    IN    @{my_list}
        ${text}=    Get Text    ${element}
        ${str}=    Set Variable    ${text}
        ${Id}=    split string     ${str}    \n
        log to console     ${Id}[0]
        IF  "${Id}[0]" == "${WorkspaceName}"
             common.Click For Element    //*[text()='${Id}[0]']
             log to console     "Workspace Selected"
           #  sleep  2s
             common.Click For Element     ${WORKSPACE_EDIT_BUTTON}
             common.Click For Element     ${DELETE_WORKSPACE_BUTTON}
             ${text}=   Get Element Attribute    ${DELETE_WORKSPACE_FIELD}   placeholder
             log to console   "Attribute"
             log to console    ${text}
             log to console   "Attribute"
             common.Input For Text       ${DELETE_WORKSPACE_FIELD}      ${WorkspaceName}
             common.Click For Element     ${CONFIRMATION_BUTTON}
             Exit For Loop

        END

   END

Delete Allworkspace
   sleep    2s
 #  [Arguments]                      ${WorkspaceName}
   @{my_list}=    Get Webelements    ${WORKSPACE_LIST}
    wait until page contains element    ${RATING}
    common.Click For Element       ${RATING}
   FOR    ${element}    IN    @{my_list}
        ${text}=    Get Text    ${element}
        ${str}=    Set Variable    ${text}
        ${Id}=    split string     ${str}    \n
        log to console     ${Id}[0]
        IF  "${Id}[0]" == "${Id}[0]"
             common.Click For Element    //*[text()='${Id}[0]']
             log to console     "Workspace Selected"
           #  sleep  2s
             common.Click For Element     ${WORKSPACE_EDIT_BUTTON}
             common.Click For Element     ${DELETE_WORKSPACE_BUTTON}
             ${text}=   Get Element Attribute    ${DELETE_WORKSPACE_FIELD}   placeholder
             log to console   "Attribute"
             log to console    ${text}
             log to console   "Attribute"
             common.Input For Text       ${DELETE_WORKSPACE_FIELD}      ${Id}[0]
             common.Click For Element     ${CONFIRMATION_BUTTON}
             sleep    2s
          #   Exit For Loop

        END

   END


Get workspacesw number
   @{my_list}=    Get Webelements    WORKSPACE_LIST
   FOR    ${element}    IN    @{my_list}
        log to console   ${element}
   END
   return   len${workspaces}

Start a new project
    sleep    2s
    ${before}=    Get Count of Elements   ${PROJECTS_BLOCK}
 #   log to console        ${before}
    common.Click For Element    ${CREATE_PROJECT_BUTTON}
    sleep    2s
    @{templates}=    Get elements    ${TEMPLATES_BLOCK}
    FOR    ${element}     IN      @{templates}
        ${text}=    Get Text    ${element}
       # log to console     ${text}
        IF  "${SCREEN_TEXTS["template_type"]} == 'Start from scratch'"
             log to console     ${SCREEN_TEXTS["template_type"]}
           #  common.Click For Element    //*[text()='Start from scratch']
             common.Click For Element    //*[text()='${SCREEN_TEXTS["template_type"]}']
             Exit For Loop
        END
    END
    [Arguments]                 ${MessageC}
    common.Input For Text       ${SEARCH_FIELD}      ${MessageC}
    common.Click For Element    ${START_EDITING}
    sleep   1s
    common.Click For Element    ${SAVE_AND_EXIT_BUTTON}
    sleep   1s
    ${after}=    Get Count of Elements   ${PROJECTS_BLOCK}
    log to console        ${after}

Number of Projects in a Page
  sleep  1s
  ${after}=    Get Count of Elements   ${PROJECTS_BLOCK}
  log to console  ${after}
  [Return]    ${after}

Number of Projects from a workspace
  sleep  1s
  ${after1}=    Get Count of Elements   ${NO_OF_PROJECTS_IN_WORKSPACEBLOCK}
    log to console  ${after1}
  [Return]    ${after1}

Search an Existing Project
   sleep  2s
   [Arguments]                 ${MessageC}
    common.Input For Text       ${SEARCH_FIELD}      ${MessageC}
   @{project_titles} =   Get elements    ${PROJECTS_TITLES}
   FOR    ${element}     IN      @{project_titles}
       ${text}=    Get Text    ${element}
       log to console     ${text}
   END

Search an Non-Existing Project
   sleep  2s
   [Arguments]                 ${MessageC}
   common.Input For Text       ${SEARCH_FIELD}      ${MessageC}
   ${element1} =    Get WebElement     ${PROJECTS_TITLES}
   Highlight              ${element1}
   ${text}=    Get Text    ${PROJECTS_TITLES}
   log to console   ${text}

Cancel a project deletion
    sleep  2s
    ${ProjectsPage} =  Number of Projects in a Page
    ${i}    Set Variable    None
    @{element1} =    Get Elements     ${PROJECTS_BLOCK}
   # Highlight                         ${element1}
    FOR    ${element}     IN      @{element1}
       ${text}=    Get Text    ${element}
       sleep  1s
       common.Click For Element       ${DROP_DOWN_BUTTON}
       wait until page contains element    ${RATING}
       common.Click For Element       ${RATING}

       IF  "${text} == 'test'"
             common.Click For Element       ${DELETE_PROJECT_BUTTON}
             Exit For Loop
       END

       log to console     ${text}
    END
    [Arguments]                 ${Status}
    IF  "${Status}"=="Cancel"
        sleep  1s
        common.Click For Element   ${CANCEL_PROJECT_DELETION_BUTTON}
        ${i}    Set Variable    1
       # ${test_data}=    Set Variable    ${TEST_FOOD_NAME}
    ELSE
        # use the command line index
        common.Click For Element   ${CONFIRM_DELETE_PROJECT_BUTTON}
      # $ ${test_data}=    Set Variable    ${TEST_FOOD_INDEX}
    END
