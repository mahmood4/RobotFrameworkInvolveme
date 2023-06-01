*** Settings ***
Documentation       Keyword Login page Ecommerces Anhtester
Library             SeleniumLibrary
Variables           ForgotPasswordUI.py
Resource            ../common/common.robot

*** Variables ***
${FILE_TO_UPLOAD}   Sample.jpg



*** Keywords ***

Click On Forgot Password Link
   common.Click For Element            ${FORGOT_PASSWORD_LINK}

send password reset link
   [Arguments]                        ${nameTxt}
    common.Input For Text             ${EMAIL_FIELD}         ${nameTxt}
    common.Click For Element          ${SEND_PASSWORD_RESET_LINK_BUTTON}


Enter Name for contact
    [Arguments]                        ${nameC}
    common.Input For Text              ${nameTxt}         ${nameC}

Enter Email for contact
    [Arguments]                        ${emailC}
    common.Input For Text              ${emailTxt}         ${emailC}

Enter Subject
    [Arguments]                         ${SubjectC}
    common.Input For Text               ${subjectTxt}      ${SubjectC}

Enter Message
    [Arguments]                         ${MessageC}
    common.Input For Text               ${messagetxt}      ${MessageC}

Click On Button Submit
    common.Click For Element            ${submitbtn}

Click to upload file
    Choose File    ${uploadfile}       ${CURDIR}${/}${FILE_TO_UPLOAD}

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
