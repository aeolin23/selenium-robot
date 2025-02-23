*** Settings ***
Resource    ../pages/common.resource
Resource    ../pages/login.resource
Resource    ../pages/inventory.resource

*** Test Cases ***
Verify user should be login using valid credentials
    Given user open the saucedemo website
    When user input correct username    standard_user
    And user input correct password     secret_sauce
    And user click the login button
    Then user should go to the inventory page