*** Settings ***
Resource    ../pages/common.resource
Resource    ../pages/login.resource
Resource    ../pages/inventory.resource
Resource    ../pages/cart.resource
Resource    ../pages/checkout_1.resource
Resource    ../pages/checkout_2.resource
Resource    ../pages/checkout_complete.resource

*** Variables ***
${username}       standard_user
${password}       secret_sauce
${first_name}     Aeolin
${last_name}      Olin
${postal_code}    12345

*** Test Cases ***
Running automation from login to checkout
    User open the saucedemo website
    User input correct Username    ${username}
    User input correct password    ${password}
    User click the login button
    User should go to the inventory page
    User sort price from high to low
    User add to cart top 3 highest priced items
    User click the cart icon
    User should go to the cart page
    User click the checkout button
    User should go to the checkout step one page
    User input correct first name    ${first_name}
    User input correct last name    ${last_name}
    User input correct postal code    ${postal_code}
    User click the continue button
    User should go to the checkout step two page
    User click the finish button
    User should go to the checkout complete page
    [Teardown]    Close Browser