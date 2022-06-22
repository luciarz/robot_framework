*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Library/Uteis.py

*** Variables ***
${base_url}     https://www.saucedemo.com/

*** Keywords ***
#quedo
Open Session
    Open Browser        ${base_url}     chrome
    Get Selenium speed
    Maximize Browser Window


Close Session
    Close Browser