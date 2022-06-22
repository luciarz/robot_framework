*** Settings ***
Resource    ../Infra/base.robot
Resource    ./ProductsPage.robot
*** Variables ***

${lblProducts}      xpath://span[text()="Products"]

*** Keywords ***

Verificar label Products
    Wait Until Page Contains Element    ${lblProducts}