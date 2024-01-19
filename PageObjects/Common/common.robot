#C:\Users\User\Downloads>json-server --watch db.json  - API Testing
####https://testersdock.com/shadow-dom-robot-framework/
###############    pabot --processes 2 --argumentfile aa.txt  Workspaces/    to run parallel
###PS C:\Users\User\PycharmProjects\InvolvemeRobotFramework\TestC                                   ases> pabot --processes 2 --argumentfile aa.txt  Workspaces/

####cd C:\Users\User\PycharmProjects\InvolvemeRobotFramework\TestCases\Workspaces
    #
    #robot -i Create -v browser:firefox WorkspaceTC.robot
*** Settings ***
Library     SeleniumLibrary   15.0    5.0
Library     OperatingSystem
Library     highlight.py
Variables    ../LoginPage/LoginUI.py
Library     browser.py
Library     SeleniumLibrary    run_on_failure=NOTHING
Resource    ../LoginPage/LoginKW.robot

*** Variables ***
${URL}           https://www.involve.me/

*** Keywords ***
Start

    IF  "${browser}" == "chrome"
          #${options}=  Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
          #Log To Console                                 ${options}
          #Create WebDriver    Chrome      chrome_options=${options}
          ${driver_path}=    get_chromedriver_path
          Open Browser     ${URL}   chrome   executable_path=${driver_path}

          Go To          ${URL}
    ELSE IF   "${browser}" == "firefox"
        # Start_Firefox
        ${driver_path}=    disable_download_dialog
        Open Browser     ${URL}    firefox    executable_path=${driver_path}
    ELSE
        ${driver_path}=    disable_download_dialog
        Open Browser     ${URL}    firefox    executable_path=${driver_path}
    END

   # Go To          ${URL}
    ${handles}=  Get Window Handles
    Maximize Browser Window
    Verify Current URL
    #${SCREEN_TEXTS}  Read Json    ../../TestData/Involve_Test.json
    ${SCREEN_TEXTS}  Read Json     C:/Users/User/PycharmProjects/InvolvemeRobotFramework/TestData/Involve_Test.json
    Set Global Variable    ${SCREEN_TEXTS}

Startee
   # ${options}=  Evaluate        sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
   # Log To Console                                 ${options}
   # Create WebDriver    Chrome      chrome_options=${options}
    Open Browser     ${URL}
    Go To          ${URL}
    ${handles}=  Get Window Handles
    Maximize Browser Window
    Verify Current URL
    #${SCREEN_TEXTS}  Read Json    ../../TestData/Involve_Test.json
    ${SCREEN_TEXTS}  Read Json     C:/Users/User/PycharmProjects/InvolvemeRobotFramework/TestData/Involve_Test.json
    Set Global Variable    ${SCREEN_TEXTS}




Read Json
    [Documentation]    The function, with its' own keyword reads the json files.
    [Arguments]        ${file_path}
    ${JSONContent}     Get File     ${file_path}
    ${page}=           Evaluate        json.loads("""${JSONContent}""")    json
    [Return]           ${page}

Close My Browser
    Sleep  2s
    Close All Browsers

Click For Element
    [Arguments]                         ${element}
    ${element1} =    Get WebElement     ${element}
    Highlight                         ${element1}
    Wait Until Element Is Visible       ${element1}
    Click Element                       ${element1}

Input For Text
    [Arguments]                         ${element}      ${input}
    ${element1} =    Get WebElement     ${element}
    Highlight                         ${element1}

    Wait Until Element Is Visible       ${element1}
  #  Highlight                           ${element}
    Input Text                          ${element1}      ${input}

PressKeys Tab
    [Arguments]                         ${element}      ${input}
    Click For Element                   ${element}
    Press Keys                          ${element}      ${input}      TAB

PressKeys Enter
    [Arguments]                         ${element}
    Wait Until Element Is Visible       ${element}
    Press Keys                          ${element}      RETURN

Login Successful
    [Arguments]                         ${emailInput}   ${passwordInput}
    LoginKW.Enter Email                 ${emailInput}
    LoginKW.Enter Password              ${passwordInput}
    LoginKW.Click Cookie

Verify Current URL
    ${curURL}=                          Get Location
    Log To Console                      ${curURL}
    [Return]                            ${curURL}

Get Text from locator
    ${my_string}=  Get Text   ${idExists}
    Log to Console            ${my_string}
    [Return]                  ${my_string}
Get Text from locator112
   # [Arguments]               ${element}
    ${my_string}=  Get Text    ${testlabel}
    Log to Console            ${my_string}
    [Return]                  ${my_string}

Is Text Displayed
    [Arguments]    ${text_to_check}
    Wait Until Page Contains     ${text_to_check}

Get Count of Elements
#   ${workspaces}   get elements list   ${ContactLink}
  [Arguments]                         ${element}
     ${element1} =    Get WebElement     ${element}
    Highlight                         ${element1}
   #@{my_list}=    Get Element Count   ${element}
   ${my_list}=    Get Element Count   ${element}
 #  FOR    ${element1}    IN    @{my_list}
      #  Highlight     ${element1}
        log to console   ${my_list}
 #  END
   [Return]    ${my_list}

Get elements

  [Arguments]                         ${element}
   @{workspaces}=   Get WebElements   ${element}
 #   log to console  @{workspaces}
    [RETURN]    @{workspaces}

Login to the Application
#    wait until page contains element     ${CLICK_COOKIE}
 #   Click Cookie
    Click On Link Login
    Enter Email                          sabree4u2@gmail.com
    Enter Password                       Nausheen4Only
    Click On Sign in button


