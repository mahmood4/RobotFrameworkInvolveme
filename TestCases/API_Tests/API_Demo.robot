*** Settings ***
Library     RequestsLibrary
Library     Collections


*** Variables ***
${base_url}         https://reqres.in/api/users
${page_id}          2
${expectedname}     test
${expectedjob}      team leader
${updated_expectedname}     update_test
${updated_expectedjob}      resident

*** Test Cases ***

Quick Get Request Test
    ${response}=    GET   ${base_url}     params=page=${page_id}   expected_status=200
    log to console    ${response.json()}
    log to console    ${response.json()}[per_page]
    Should Be Equal As Strings    6  ${response.json()}[per_page]
    Should Be Equal As Strings    12  ${response.json()}[total]
    Should Be Equal As Strings    7  ${response.json()}[data][0][id]

Quick POST Request Test
    &{req_body}=  Create Dictionary    name=test        job=team leader
    ${response}=     POST        ${base_url}     json=${req_body}    expected_status=201
    log to console    ${response.json()}
    Dictionary Should Contain Key     ${response.json()}     id
    ${name}=    Get From Dictionary     ${response.json()}    name
    Should Be Equal As Strings    ${expectedname}   ${name}

    ${job}=    Get From Dictionary     ${response.json()}    job
    Should Be Equal As Strings    ${expectedjob}    ${job}


Quick PUT Request Test
    &{req_body}=  Create Dictionary    name=update_test        job=resident
    ${response}=     PUT        ${base_url}+/2     json=${req_body}    expected_status=200
    log to console      ${response.json()}

    Dictionary Should Contain Key     ${response.json()}     name
    ${name}=    Get From Dictionary     ${response.json()}    name
    Should Be Equal As Strings    ${updated_expectedname}    ${name}

    Dictionary Should Contain Key     ${response.json()}     job
    ${job}=    Get From Dictionary     ${response.json()}    job
    Should Be Equal As Strings    ${updated_expectedjob}    ${job}


Quick DELETE Request Test
     ${delete_resp}=   DELETE    ${base_url}+/2           expected_status=204
