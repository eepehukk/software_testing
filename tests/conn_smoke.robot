*** Settings ***
Library    Browser

*** Variables ***
${URL}    http://127.0.0.1:4321/login

*** Test Cases ***
Frontend Page Should Load
    New Browser    chromium    headless=True
    New Page       ${URL}
    ${header}=     Get Text    h1:nth-of-type(1)
    Should Be Equal    ${header}    Welcome to Todo Manager
    Close Browser
