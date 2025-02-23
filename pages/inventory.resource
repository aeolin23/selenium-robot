*** Settings ***
Library      SeleniumLibrary
Variables    ../locators/inventory.py

*** Keywords ***
user should go to the inventory page
    Element Text Should Be    ${title_page}      Swag Labs
    Element Text Should Be    ${title_header}    Products

user sort price from high to low
    Click Element    ${sort_dropdown}
    Click Element    ${high_to_low_option}

user add to cart top 3 highest priced items
    Click Element             ${fleece_jacket_add_to_cart}
    Click Element             ${backpack_add_to_cart}
    Click Element             ${bolt_tshirt_add_to_cart}
    Element Text Should Be    ${shopping_cart_qty}    3

user click the cart icon
    Click Element    ${shopping_cart_button}

