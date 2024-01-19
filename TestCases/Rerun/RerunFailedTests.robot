*** Settings ***
Documentation       Tests to login to Login Page
Library     SeleniumLibrary
Library     ../../PageObjects/Common/browser.py

*** Variables ***
${valid_username}     Admin
${valid_password}       admin123
${invalid_username}     1234
${invalid_password}     45678
${blank_username}
${blank_password}
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser_name}      Chrome
${login_error_message}      css:.oxd-alert-content--error
${dashboard_title}       css:.oxd-topbar-header-breadcrumb-module
${missing_username_error_message}    xpath://*[@class='oxd-form']/div[1]/div/span
${missing_password_error_message}   xpath://*[@class='oxd-form']/div[2]/div/span


*** Test Cases ***

Validate Unsuccessful Login using invalid credentials
    [Tags]    SMOKE
    Open the Browser with URL
    Fill the login form     ${valid_username}       ${invalid_password}
    Verify the error message is correct
    Close Browser Session

Validate Unsuccessful Login for blank username
    [Tags]    REGRESSION
    Open the Browser with URL
    Fill the login form     ${blank_username}       ${valid_password}
    Verify the error message is displayed for username
    Close Browser Session

Validate Unsuccessful Login for blank password
    [Tags]    SMOKE     REGRESSION
    Open the Browser with URL
    Fill the login form     ${valid_username}       ${blank_password}
    Verify the error message is displayed for password
    Close Browser Session

Validate successful Login
    [Tags]    UAT
    Open the Browser with URL
    Fill the login form     ${valid_username}       ${valid_password}
    Verify Dashboard page opens
    Close Browser Session

*** Keywords ***

Open the Browser with URL
   # Create Webdriver    ${browser_name}  executable_path=/Vibha_Personal/RobotFramework_Demo/drivers/${browser_name}
    ${driver_path}=    get_chromedriver_path
    Open Browser     ${URL}   chrome   executable_path=${driver_path}
    Go To       ${url}
    Maximize Browser Window
    Set Selenium Implicit Wait    5

Fill the login form
   [Arguments]    ${username}      ${password}
   Input Text    css:input[name=username]   ${username}
   Input Password    css:input[name=password]   ${password}
   Click Button    css:.orangehrm-login-button

Verify the error message is correct
    Element Text Should Be    ${login_error_message}    Invalid credentials

Verify Dashboard page opens
    Element Text Should Be    ${dashboard_title}      Dashboard

Verify the error message is displayed for username
     Element Text Should Be    ${missing_username_error_message}      Required

Verify the error message is displayed for password
      Element Text Should Be    ${missing_password_error_message}      Required!

Close Browser Session
    Close Browser