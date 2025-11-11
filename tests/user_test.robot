*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://frontend-dev:4321/
${MYUSERNAME}   demo
${MYPASSWORD}   mode

*** Test Cases ***

Todo Manager Should Be Visible After Successful Login
    [Setup]      Do Successful Login
    Verify That Todo Manager Is Visible
    [Teardown]   Do Successful Logout

*** Keywords ***

Do Successful Login
    Open Browser To Login Page
    Open Registeration Page
    Enter Username
    Enter Password
    Submit Register Form

Open Browser To Login Page
    New Browser     headless=${TRUE}
    New Page        ${URL}login

Open Registeration Page
    Click           text=To Registeration

Enter Username
    [Arguments]    ${username}=${MYUSERNAME}
    Fill Text       id=username    ${username}

Enter Password
    [Arguments]    ${password}=${MYPASSWORD}
    Fill Text       id=password    ${password}

Submit Register Form
    Click           text=Register

Do Successful Logout
    Click           text=Logout

Verify That Todo Manager Is Visible
    Get Text        body    contains    My todo lists
    Get Url         Should Be    ${URL}
