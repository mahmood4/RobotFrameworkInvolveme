*** Settings ***
Library     RequestsLibrary
Library     Collections


*** Variables ***
${base_url}     http://gorest.co.in/public
${base_url1}     http://gorest.co.in/public/v2/users
${auth_token}    Bearer e4b8e1f593dc4a731a153c5ec8cc9b8bbb583ae964ce650a741113091b4e2ac6
${page_id}          2
${expectedname}     test
${expectedjob}      team leader
${updated_expectedname}     update_test
${updated_expectedjob}      resident

*** Test Cases ***

Quick Get Request Test
    create session     mysession    ${base_url}
    ${headers}     create dictionary     Authorization=${auth_token}      Content-Type=application/json
    ${response}=    GET On Session  mysession   v2/users/6007073  headers=${headers}
    ${status_code}=     Convert to String    ${response.status_code}

    log to console    ${response}
    log to console    ${response.status_code}
    log to console    ${response.content}
    should be equal   ${status_code}      200
    #Should Be Equal As Strings    6  ${response.json()}[per_page]
    #Should Be Equal As Strings    12  ${response.json()}[total]
    #Should Be Equal As Strings    7  ${response.json()}[data][0][id]

Post Request Test
    [Tags]    postt
     &{req_body}=  Create Dictionary    name=test    email=test111@gmail.com    gender=male       status=active
   # ${endpoint}    set variable    /v2/users
   # ${headers}     create dictionary     Authorization=${auth_token}      Content-Type=application/json
    ${response1}=     POST        ${base_url1}     json=${req_body}    expected_status=201
   # create session     mysession    ${base_url}       verify=true
   # ${response1}=    POST On Session  mysession    ${endpoint}   headers=${headers}    data={"name":"faraz","email":"fasraz_ahmed@gmaiol.com","gender":"male","status":"active"}
    log to console      ${response1.content}


    log to console      ${response1.status_code}
  #  log to console      ${response1.content}
#    should be equal    # ${status_code}      201
