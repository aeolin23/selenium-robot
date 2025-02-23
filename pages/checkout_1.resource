*** Settings ***
Library      SeleniumLibrary
Variables    ../locators/checkout_1.py

*** Keywords ***
user should go to the checkout step one page
    Element Text Should Be    ${title_page}    Swag Labs
    Element Text Should Be    ${title_header}    Checkout: Your Information

user input correct first name
    [Arguments]    ${first_name}
    Input Text     ${first_name_field}    ${first_name}

user input correct last name
    [Arguments]    ${last_name}
    Input Text     ${last_name_field}   ${last_name}

user input correct postal code
    [Arguments]    ${postal_code}
    Input Text     ${postal_code_field}    ${postal_code}

user click the continue button
    Click Element    ${continue_button}