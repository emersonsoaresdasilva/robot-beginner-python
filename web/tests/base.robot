*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${url}              http://training-wheels-protocol.herokuapp.com/

# Cria ganchos de sessões do navegador
*** Keywords ***
Nova sessão
    Open Browser                    ${url}                      edge

Encerra sessão
    Close Browser