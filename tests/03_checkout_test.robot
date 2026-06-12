*** Settings ***
Resource    ../resources/base.robot
Resource    ../resources/pages/login_page.robot
Resource    ../resources/pages/inventory_page.robot
Resource    ../resources/pages/cart_page.robot
Resource    ../resources/pages/checkout_page.robot

Test Setup       Nova Sessao
Test Teardown    Encerra Sessao

*** Test Cases ***
Cenario 1: Realizar compra com sucesso (E2E completo)
    [Tags]    checkout    e2e    sucesso
    Fazer Login    standard_user    secret_sauce
    Adicionar Mochila ao Carrinho
    Ir para o Carrinho
    Ir para Checkout
    Preencher Dados Pessoais    Fulano    Tal    12345-678
    Clicar em Continuar
    Validar Pagina de Resumo
    Finalizar Compra
    Validar Mensagem de Sucesso
