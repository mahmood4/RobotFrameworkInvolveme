*** Settings ***
Documentation       Keyword Login page Ecommerces Anhtester
Library             SeleniumLibrary
Variables           ProductsUI.py
Resource            ../common/common.robot

*** Keywords ***

Enter Name1
    [Arguments]                        ${nameInput}
    common.Input For Text              ${nameTxt}         ${nameInput}

Enter Email
    [Arguments]                        ${emailInput}
    common.Input For Text              ${emailTxt}         ${emailInput}

Enter Password
    [Arguments]                         ${passwordInput}
    common.Input For Text               ${passwordTxt}      ${passwordInput}

Click On Button Signup
    common.Click For Element            ${signupBtn}

Click On Link Login
    common.Click For Element            ${loginBttn}

Click On Link Logout
    common.Click For Element            ${logoutBttn}



Click On Link Signup / Login
    common.Click For Element            ${loginSignupBtn}

PK TAB Email/Password Keyboard
    [Arguments]                         ${emailInput}       ${passwordInput}
    common.PressKeys Tab                ${emailTxt}         ${emailInput}
    common.PressKeys Tab                ${passwordTxt}      ${passwordInput}

PK Login keyboard
    common.PressKeys Enter              ${loginBtn}

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
