*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TITLE_INVENTORY}         css=.title
${BTN_ADD_BACKPACK}        id=add-to-cart-sauce-labs-backpack
${BTN_ADD_BIKELIGHT}       id=add-to-cart-sauce-labs-bike-light
${BTN_REMOVE_BACKPACK}     id=remove-sauce-labs-backpack
${CART_BADGE}              css=.shopping_cart_badge
${CART_LINK}               css=.shopping_cart_link

*** Keywords ***
Validar Pagina de Produtos
    Wait Until Element Contains    ${TITLE_INVENTORY}    Products

Adicionar Mochila ao Carrinho
    Click Element    ${BTN_ADD_BACKPACK}

Adicionar Lanterna de Bicicleta ao Carrinho
    Click Element    ${BTN_ADD_BIKELIGHT}

Remover Mochila do Carrinho pela Pagina de Produtos
    Click Element    ${BTN_REMOVE_BACKPACK}

Validar Quantidade de Itens no Carrinho
    [Arguments]    ${quantidade}
    Element Text Should Be    ${CART_BADGE}    ${quantidade}

Ir para o Carrinho
    # Forçar navegação direta via URL para burlar bloqueios de clique em modo Headless
    Go To    https://www.saucedemo.com/cart.html
