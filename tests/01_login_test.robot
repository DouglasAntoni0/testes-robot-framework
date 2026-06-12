*** Settings ***
Resource    ../resources/base.robot
Resource    ../resources/pages/login_page.robot
Resource    ../resources/pages/inventory_page.robot

Test Setup       Nova Sessao
Test Teardown    Encerra Sessao

*** Test Cases ***
Cenario 1: Login com sucesso
    [Tags]    login    sucesso
    Fazer Login    standard_user    secret_sauce
    Validar Pagina de Produtos

Cenario 2: Login com usuario bloqueado
    [Tags]    login    falha
    Fazer Login    locked_out_user    secret_sauce
    Verificar Mensagem de Erro    Epic sadface: Sorry, this user has been locked out.

Cenario 3: Login com senha incorreta
    [Tags]    login    falha
    Fazer Login    standard_user    senha_errada
    Verificar Mensagem de Erro    Epic sadface: Username and password do not match any user in this service
