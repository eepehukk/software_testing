*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://frontend-dev:4321/
${MYUSERNAME}   SofianKurssisuoritus
${MYPASSWORD}   1234dsakfvsfavygd

*** Test Cases ***

Opening browser to login Page
    Open Browser To Login Page
    Close Browser

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

Creating a Todolist
    Open Browser To Login Page
    Enter Username    ${MYUSERNAME}
    Enter Password    ${MYPASSWORD}
    Submit Login Form
    Verify That Todo Manager Is Visible
    Open Create a Todolist
    Fill Todo List Form
    Close Browser

Deleting a Todolist
    Open Browser To Login Page
    Enter Username    ${MYUSERNAME}
    Enter Password    ${MYPASSWORD}
    Submit Login Form
    Verify Todolist is Visible
    Delete Todolist
    Close Browser

*** Keywords ***

Open Browser To Login Page
    New Browser     chromium     headless=True
    New Page        ${URL}login
    Get Text        body    contains    Welcome to Todo Manager


Open Registeration Page
    Sleep          1s
    Click          text=To Registration
    Wait For Navigation    url=**/register    timeout=5s
    Sleep          1s
    Verify Registeration Page

Verify Registeration Page
    Get Text        body    contains    Register an account


Enter Username
    [Arguments]     ${username}
    Fill Text       id=username    ${username}

Enter Password
    [Arguments]     ${password}
    Fill Text       id=password    ${password}

Submit Register Form
    Sleep          1s
    Click    role=button >> text=Register
    Sleep          1s

Submit Login Form
    Sleep          2s
    Click    role=button >> text=Login
    Sleep          1s

Do Successful Logout
    Click           text=Logout

Verify that error message about db is visible
    Get Url        Should Be    ${URL}register

    ${error_text}=    Get Text         id=login-form-error
    Should Contain    ${error_text}    relation "users" does not exist 


Verify That Todo Manager Is Visible
    Sleep          1s
    Get Url        Should Be    ${URL}

Open Create a Todolist
    Sleep          2s
    Click    role=button >> text=New todo list
    Sleep          1s
    Verify Creation of Todolist Page

Verify Creation of Todolist Page
    Get Text        body    contains    Create a new todo list

Fill Todo List Form
    Enter Todolist Name
    Enter Todolist Description
    Click    role=button >> text=Create
    Sleep    5s
    Verify Todolist is Visible

Enter Todolist Name
    Fill Text    text=Name    SofianNopat

Enter Todolist Description
    Fill Text    text=Description    SofiaKerääHyvinNoppia    

Verify Todolist is Visible
    Get Text        body    contains    SofianNopat

Delete Todolist
    Click    css=button:has([icon="fluent:delete-20-regular"])
    Sleep    5s
    Get Text        body    contains    Are you sure you want to delete this todo list?
    Sleep    5s
    Click    role=button >> text=Delete




Verify Delete Works
    Wait For Elements State    text=SofianNopat    detached
