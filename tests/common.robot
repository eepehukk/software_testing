*** Settings ***
Library    Browser
Library    OperatingSystem

*** Variables ***
${URL}             http://frontend-dev:4321/login
${SCREENSHOT_DIR}  /tests/screenshots

*** Test Cases ***
Open Login And Click Register
    New Browser    chromium    headless=True
    New Page       http://frontend-dev:4321/login
    Sleep   2s
    Click    xpath=//button[text()="To Registration"]
    Wait For Navigation    url=**/register    timeout=5s
    Sleep    2s
    Take Screenshot    /tests/screenshots/after_register_click.png
    Close Browser

