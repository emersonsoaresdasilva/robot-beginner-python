*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${url}              http://training-wheels-protocol.herokuapp.com/

# Cria ganchos de sessões do navegador
*** Keywords ***
Nova sessão
    Open Browser                    ${url}                      chrome

Encerra sessão
    Capture Page Screenshot
    Close Browser