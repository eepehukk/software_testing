*** Settings ***
Library                 RequestsLibrary
Test Setup              Create My Session 
Test Teardown           Delete All Sessions


*** Variables ***
${USERNAME}   SofianForttiKD
${PASSWORD}   1234dsakfvsfavygd
${URL}        http://127.0.0.1:4322/

*** Comments ***
Improa löydetty sivulta https://testersdock.com/api-testing-robot-framework/ json datan lähettämiseen POST pyynnössä.


*** Test Cases ***
Backend Healthcheck is successful
    ${response}=  GET On Session  uusi  /health
    Status Should Be  200  ${response}

User Registration is successful
    &{data}=  Create Dictionary  username=${USERNAME}  password=${PASSWORD}
    &{headers}=  Create Dictionary  Content-Type=application/json
    ${response}=  POST On Session  uusi  /api/users  json=${data}  headers=${headers}
    Status Should Be  200  ${response}
    
User Login is successful
    &{data}=  Create Dictionary  username=${USERNAME}  password=${PASSWORD}
    &{headers}=  Create Dictionary  Content-Type=application/json
    ${response}=  POST On Session  uusi  api/users/login  json=${data}    headers=${headers}
    Status Should Be  200  ${response}


*** Keywords ***
Create My Session
    Create Session    uusi    ${URL}    verify=True

