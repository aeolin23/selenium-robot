*** Settings ***
Library      SeleniumLibrary
Variables    ../locators/checkout_2.py

*** Keywords ***
user should go to the checkout step two page
    Element Text Should Be    ${title_page}    Swag Labs
    Element Text Should Be    ${title_header}    Checkout: Overview

user click the finish button
    Click Button    ${finish_button}