*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      headlesschrome
${URL}          https://www.saucedemo.com/

*** Keywords ***
Nova Sessao
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size    1920    1080
    Set Selenium Implicit Wait    5 seconds

Encerra Sessao
    Capture Page Screenshot
    Close Browser
