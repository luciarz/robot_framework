*** Settings ***
Resource    ../Infra/base.robot
Resource    ./ProductsPage.robot

*** Variables ***

${txtUsername}      id:user-name
${txtPassword}      xpath://input[@id="password"]
${btnLogin}         id:login-button


*** Keywords ***
#Funcoes
Escrever login
    [Arguments]     ${username}
    Input Text      ${txtUsername}      ${username}

Escrever senha
    [Arguments]     ${password}
    Input Text      ${txtPassword}      ${password}

Clicar botao login
    Click button    ${btnLogin}

#Funcionalidade
Realize login
    [Arguments]     ${username}     ${password}

    Escrever login      ${username}
    Escrever senha      ${password}
    Clicar botao login

#Passos
Acessar o site principal
    Log to console      Acessou a tela principal
    ${date}=    Get Date
    Log to console      ${date}
    ${teste}=   Other Function
    Log to console      ${teste}
Logar com login e senha corretos
    Realize login       standard_user   secret_sauce

Deve ser redirecionado para a tela de productos
   Verificar label Products