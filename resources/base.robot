*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://www.saucedemo.com/

*** Keywords ***
Nova Sessao
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --window-size=1920,1080
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --headless
    Open Browser    ${URL}    chrome    options=${options}
    Set Selenium Implicit Wait    10 seconds

Encerra Sessao
    Capture Page Screenshot
    Close Browser
