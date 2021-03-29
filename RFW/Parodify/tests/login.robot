***Settings***
Documentation   Testes da página de login

Resource    ../resources/base.robot

#Gancho parar tirar screenshot apos a execução de cada teste
Test Teardown   Take Screenshot

***Test Cases***
Login com sucesso
    [tags]  smoke
    Open Login Page
    Login with      papito@parodify.com     pwd123
    Click           css=input[value="Log in"]
    Logout Link Should be Visible

Senha Incorreta
    Open Login Page
    Login with      papito@parodify.com     abc123
    Click           css=input[value="Log in"]
    Alert Should Be     Opps! Dados de acesso incorretos!

Email Incorreto
    Open Login Page
    Login with       404@gmail.com       pwd123
    Click           css=input[value="Log in"]
    Alert Should Be     Opps! Dados de acesso incorretos!

Email não informado
    Open Login Page
    Login with      ${EMPTY}        pwd123
    Click           css=input[value="Log in"]
    Alert Should Be     Opps! Dados de acesso incorretos!

Senha não informada
    Open Login Page
    Login with      papito@parodify.com     ${EMPTY}
    Click           css=input[value="Log in"]
    Alert Should Be     Opps! Dados de acesso incorretos!