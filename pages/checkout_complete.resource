*** Settings ***
Library      SeleniumLibrary
Variables    ../locators/checkout_complete.py

*** Keywords ***
user should go to the checkout complete page
    Element Text Should Be    ${title_page}    Swag Labs
    Element Text Should Be    ${title_header}    Checkout: Complete!
    Element Text Should Be    ${thank_you_title}    Thank you for your order!