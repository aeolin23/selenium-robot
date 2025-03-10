*** Settings ***
Library     ../libs/apihelper.py

*** Keywords ***
Get Items
    Api Get Items

Get Detail By ID
    [Arguments]     ${id}
    Api Get Item    ${id}

Get Name By ID
    [Arguments]     ${id}
    ${api}    Api Get Item    ${id}
    log    ${api}[name]

Delete Item
    [Arguments]     ${id}
    Delete Item with API    ${id}

Add New Item
    [Arguments]     ${name}    ${desc}    ${qty}
    Add Item with API    ${name}    ${desc}    ${qty}

Update Item
    [Arguments]     ${id}    ${name}    ${description}    ${qty}
    Edit Item with API    ${id}    ${name}    ${description}    ${qty}

Update Qty
    [Arguments]     ${id}    ${qty}
    Edit Qty with API    ${id}    ${qty}