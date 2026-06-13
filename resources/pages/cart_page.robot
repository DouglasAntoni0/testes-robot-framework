*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TITLE_CART}               css=.title
${ITEM_NAME_BACKPACK}       xpath=//div[@class='inventory_item_name' and text()='Sauce Labs Backpack']
${BTN_CHECKOUT}             id=checkout

*** Keywords ***
Validar Pagina do Carrinho
    Wait Until Element Contains    ${TITLE_CART}    Your Cart

Validar Mochila no Carrinho
    Page Should Contain Element    ${ITEM_NAME_BACKPACK}

Ir para Checkout
    Wait Until Element Is Visible    ${BTN_CHECKOUT}
    Click Element    ${BTN_CHECKOUT}
