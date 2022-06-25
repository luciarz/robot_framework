*** Settings ***
Resource    ../Pages/LoginPage.robot

Test Setup      Open Session
Test Teardown   Close Session

*** Test Cases ***
Realizar login
    Acessar o site principal
    Logar com login e senha corretos
    Deve ser redirecionado para a tela de productos

