*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${INPUT_FIRSTNAME}    id=first-name
${INPUT_LASTNAME}     id=last-name
${INPUT_POSTALCODE}   id=postal-code
${BTN_CONTINUE}       id=continue
${BTN_FINISH}         id=finish
${TITLE_CHECKOUT}     css=.title
${MSG_COMPLETE}       css=.complete-header

*** Keywords ***
Preencher Dados Pessoais
    [Arguments]    ${nome}    ${sobrenome}    ${cep}
    Wait Until Element Is Visible    ${INPUT_FIRSTNAME}
    Input Text    ${INPUT_FIRSTNAME}    ${nome}
    Input Text    ${INPUT_LASTNAME}     ${sobrenome}
    Input Text    ${INPUT_POSTALCODE}   ${cep}

Clicar em Continuar
    Click Element    ${BTN_CONTINUE}

Validar Pagina de Resumo
    Wait Until Element Contains    ${TITLE_CHECKOUT}    Checkout: Overview

Finalizar Compra
    Click Element    ${BTN_FINISH}

Validar Mensagem de Sucesso
    Wait Until Element Is Visible    ${MSG_COMPLETE}
    Element Text Should Be    ${MSG_COMPLETE}    Thank you for your order!
