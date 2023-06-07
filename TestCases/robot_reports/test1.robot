*** Settings ***
Documentation    Suite description
Library    String


*** Test Cases ***
Test title
    ${str}=    Set Variable    test /n 18

    ${Id}=    split string     ${str}    /n

    log to console    ${Id}[0]    #prints 7939

*** Keywords ***
Provided precondition
    Setup system under test