*** Settings ***
Library      SeleniumLibrary
Variables    ../locators/cart.py

*** Keywords ***
user should go to the cart page
    Element Text Should Be    ${title_page}    Swag Labs
    Element Text Should Be    ${title_header}    Your Cart

user click the checkout button
    Click Element    ${checkout_button}