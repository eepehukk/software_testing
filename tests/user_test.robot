*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://frontend-dev:4321/
${MYUSERNAME}   demo
${MYPASSWORD}   12345678

*** Test Cases ***

Todo Manager Should Be Visible After Successful Login
    Do Successful Login

*** Keywords ***

Do Successful Login
    Open Browser To Login Page
    Open Registeration Page
    Verify Registeration Page


Open Browser To Login Page
    New Browser     headless=${TRUE}
    New Page        ${URL}login
    Get Text        body    contains    Welcome to Todo Manager


Open Registeration Page
    Click           id=register-button
    Wait For Navigation    url=**/register    timeout=5s

Verify Registeration Page
    Get Text        body    contains    Register an account


Enter Username
    [Arguments]    ${username}=${MYUSERNAME}
    Fill Text       id=username    ${username}

Enter Password
    [Arguments]    ${password}=${MYPASSWORD}
    Fill Text       id=password    ${password}

Submit Register Form
    Click           id=submit-register-button

Do Successful Logout
    Click           text=Logout

Verify That Todo Manager Is Visible
    Get Text        body    contains    My todo lists
    Get Url         Should Be    ${URL}
