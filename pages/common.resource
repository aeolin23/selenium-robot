*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://www.saucedemo.com/
${BROWSER}      chrome

*** Keywords ***
user open the saucedemo website
    Set Selenium Implicit Wait    10
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window