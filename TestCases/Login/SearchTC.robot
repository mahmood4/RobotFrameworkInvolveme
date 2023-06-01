*** Settings ***
Library   SeleniumLibrary
Resource  ../../PageObjects/Search/SearchKW.robot
Resource  ../../PageObjects/Common/common.robot
Resource  ../../PageObjects/LoginPage/LoginKW.robot
Test Setup         common.Open My Browser
Test Teardown      common.Close My Browser

*** Test Case ***
Check Item is found by Search button.
    [Documentation]     Check links opening in other tab when click "Add New Category" button.
     # Enter Text In Search            ${searchBoxField}
    Enter Text In Search      HP
    Click On Button Search
    Verify Search Item found


Check Item is Not found by Search button.
    [Documentation]     Check links opening in other tab when click "Add New Category" button.
     # Enter Text In Search            ${searchBoxField}
    Enter Text In Search      Honda
    Click On Button Search
    Verify Search Item Not found

User searches without any product.
    [Documentation]     Check links opening in other tab when click "Add New Category" button.
     # Enter Text In Search            ${searchBoxField}

    Click On Button Search
    Verify Search Item Not found
