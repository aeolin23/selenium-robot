*** Settings ***
Library      SeleniumLibrary
Variables    ../locators/login.py

*** Keywords ***
user input correct username
    [Arguments]    ${username}
    Input Text     ${username_field}    ${username}

user input correct password
    [Arguments]    ${password}
    Input Text     ${password_field}    ${password}

user click the login button
    Click Element    ${login_button}