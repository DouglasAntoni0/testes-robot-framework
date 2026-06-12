*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${INPUT_USERNAME}    id=user-name
${INPUT_PASSWORD}    id=password
${BTN_LOGIN}         id=login-button
${ERROR_MESSAGE}     css=h3[data-test="error"]

*** Keywords ***
Fazer Login
    [Arguments]    ${username}    ${password}
    Input Text    ${INPUT_USERNAME}    ${username}
    Input Text    ${INPUT_PASSWORD}    ${password}
    Click Element    ${BTN_LOGIN}

Verificar Mensagem de Erro
    [Arguments]    ${mensagem_esperada}
    Element Text Should Be    ${ERROR_MESSAGE}    ${mensagem_esperada}
