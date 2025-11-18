*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://frontend-dev:4321/
${MYUSERNAME}   SofianKurssisuoritus
${MYPASSWORD}   1234dsakfvsfavygd

*** Test Cases ***

Login Form shows successful registration and logout
    Open Browser To Login Page
    Open Registeration Page
    Enter Username    ${MYUSERNAME}
    Enter Password    ${MYPASSWORD}
    Submit Register Form
    Verify That Todo Manager Is Visible
    Close Browser

Login Form successful after registration and logout
    Open Browser To Login Page
    Enter Username    ${MYUSERNAME}
    Enter Password    ${MYPASSWORD}
    Submit Login Form
    Verify That Todo Manager Is Visible
    Close Browser

*** Keywords ***

Open Browser To Login Page
    New Browser     headless=${TRUE}
    New Page        ${URL}login
    Get Text        body    contains    Welcome to Todo Manager


Open Registeration Page
    Click           id=register-button
    Wait For Navigation    url=**/register    timeout=5s
    Verify Registeration Page

Verify Registeration Page
    Get Text        body    contains    Register an account


Enter Username
    [Arguments]    ${username}
    Fill Text       id=username    ${username}

Enter Password
    [Arguments]    ${password}
    Fill Text       id=password    ${password}

Submit Register Form
    Sleep          2s
    Click           id=submit-register-button
    Sleep          10s

Submit Login Form
    Sleep          2s
    Click          id=login-form-button
    Sleep          10s

Do Successful Logout
    Click           text=Logout

Verify that error message about db is visible
    Get Url        Should Be    ${URL}register

    ${error_text}=    Get Text    id=login-form-error
    Should Contain    ${error_text}    relation "users" does not exist 


Verify That Todo Manager Is Visible
    Sleep          4s
    Get Url         Should Be    ${URL}
