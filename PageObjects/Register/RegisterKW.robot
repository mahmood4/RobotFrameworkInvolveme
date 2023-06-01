*** Settings ***
Documentation       Keyword Login page Ecommerces Anhtester
Library             SeleniumLibrary
Variables           RegisterUI.py
Resource            ../../PageObjects/Common/common.robot


*** Keywords ***
Click On Register Button
    common.Click For Element            ${registerOption}

Enter Name
    [Arguments]                        ${NameInput}
    common.Input For Text              ${NameField}         ${NameInput}

Enter Email Address
    [Arguments]                        ${EmailAddressInput}
    common.Input For Text              ${EmailAddressField}         ${EmailAddressInput}

Click SignUp Button
    common.Click For Element            ${SignupButton}

Click Title RadioButton
    common.Click For Element            ${GenderRadioBtn}

Enter Password To Register
    [Arguments]                        ${passwordtxtInput}
    common.Input For Text              ${passwordtxt}         ${passwordtxtInput}

Enter First Name
    [Arguments]                        ${firstNameInput}
    common.Input For Text              ${firstnametxt}         ${firstNameInput}

Enter Last Name
    [Arguments]                        ${LastNameInput}
    common.Input For Text              ${lastnametxt }         ${LastNameInput}

Enter Address
    [Arguments]                        ${AddressInput}
    common.Input For Text              ${addresstxt}         ${AddressInput}

Enter State
    [Arguments]                        ${StateInput}
    common.Input For Text              ${statetxt}         ${StateInput}

Enter City
    [Arguments]                         ${CityInput}
    common.Input For Text               ${citytxt}      ${CityInput}

Enter ZipCode
    [Arguments]                         ${ZipCodeInput}
    common.Input For Text               ${zipcodetxt}      ${ZipCodeInput}

Enter MobNum
    [Arguments]                         ${MobNumInput}
    common.Input For Text               ${mobnumtxt}      ${MobNumInput}

Click Create Account
    common.Click For Element            ${CreateaccountBtn}



#
#
#Click News Letter Option
#    common.Click For Element             ${YesNewsletterOption}
#
#Enter Warning message
#    [Arguments]                         ${passwordInput}
#    common.Input For Text               ${warningMessage}      ${passwordInput}
#
#Enter FirstName Warning
#    [Arguments]                         ${passwordInput}
#    common.Input For Text               ${firstNameWarning}      ${passwordInput}
#
#Enter LastName Warning
#    [Arguments]                         ${passwordInput}
#    common.Input For Text               ${lastNameWaring}      ${passwordInput}
#
#Enter Email Warning
#    [Arguments]                         ${passwordInput}
#    common.Input For Text               ${emailWarning}      ${passwordInput}
#
#
#Enter Telephone Warning
#    [Arguments]                         ${passwordInput}
#    common.Input For Text               ${telephoneWarning}      ${passwordInput}
#
#
#Enter Password Warning
#    [Arguments]                         ${passwordInput}
#    common.Input For Text               ${passwordWarning}      ${passwordInput}
#
#
#
#Click On Button Signup
#    common.Click For Element            ${signupBtn}
#
#Click On Button Login
#    common.Click For Element            ${linkloginText}
#
#Click On Button NewSignup
#    common.Click For Element            ${newsignupBtn}
#
#PK TAB Email/Password Keyboard
#    [Arguments]                         ${emailInput}       ${passwordInput}
#    common.PressKeys Tab                ${emailTxt}         ${emailInput}
#    common.PressKeys Tab                ${passwordTxt}      ${passwordInput}
#
#PK Login keyboard
#    common.PressKeys Enter              ${loginBtn}
#
#Click On Forgot Password
#    common.Click For Element            ${forgotBtn}
#
#Click On Login Button
#    common.Click For Element            ${loginBtn}
#
