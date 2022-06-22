*** Settings ***
Resource    ../Infra/base.robot

*** Variables ***

${txtUsername}      id:user-name
${txtPassword}      xpath://input[@id="password"]
${btnLogin}         id:login-button


*** Keywords ***
#Funcoes
Escrever login
    [Arguments]     ${username}
     Input Text      ${txtUsername}      standard_user

Escrever senha
    [Arguments]     ${password}
    Input Text      ${txtPassword}      secret_sauce

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

Logar com login e senha corretos
    Realize login       standard_user   secret_sauce

Deve ser redirecionado para a tela de productos
   