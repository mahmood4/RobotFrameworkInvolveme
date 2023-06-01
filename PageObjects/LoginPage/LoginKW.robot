*** Settings ***
Documentation       Keyword Login page Ecommerces Anhtester
Library             SeleniumLibrary
Variables           LoginUI.py
Resource            ../common/common.robot

*** Keywords ***

Enter Email
    [Arguments]                        ${nameInput}
    common.Input For Text              ${USERNAME_FIELD}         ${nameInput}

#Enter
 #   [Arguments]                        ${emailInput}
 #   common.Input For Text              ${emailTxt}         ${emailInput}

Enter Password
    [Arguments]                         ${passwordInput}
    common.Input For Text               ${PASSWORD_FIELD}      ${passwordInput}

Click On Button Signup
    common.Click For Element            ${signupBtn}

Click On Link Login
    common.Click For Element            ${LOGIN_LINK}

Click On Link Logout
    common.Click For Element   ${ACCOUNT_DROP_DOWN_MENU}
    common.Click For Element            ${LOGOUT_BTN}

Click On Sign in button
    common.Click For Element            ${LOGIN_BUTTON}

PK TAB Email/Password Keyboard
    [Arguments]                         ${emailInput}       ${passwordInput}
    common.PressKeys Tab                ${emailTxt}         ${emailInput}
    common.PressKeys Tab                ${passwordTxt}      ${passwordInput}

Click Cookie
     common.Click For Element              ${CLICK_COOKIE}

Click On Forgot Password
    common.Click For Element            ${forgotBtn}

Click On myAccountDropMenu
    common.Click For Element            ${myAccountDropMenu}

Click On Login Button
    common.Click For Element            ${loginBtn}


Click Delete Button
    common.Click For Element             ${deletBtnlnk}

Click Continue Button

    common.Click For Element             ${ContBtnlnk}
