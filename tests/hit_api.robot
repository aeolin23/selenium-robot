*** Settings ***
Resource    ../pages/api.resource

*** Variables ***
${id_delete}      107

*** Test Cases ***
Hit API Kelas Otomesyen
    Get Items
    Get Detail By ID    165
    Get Name By ID    165
    Delete Item    ${id_delete}
    Add New Item    Hehehe    Mantap    33
    Edit Item with API    165    Hehehe_Edit    Udah_Diedit    10
    Edit Qty with API    165    45