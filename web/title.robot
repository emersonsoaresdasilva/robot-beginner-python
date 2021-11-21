*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Deve validar o título
    # Abre o navegador
    Open Browser        http://training-wheels-protocol.herokuapp.com/      edge
    # Valida o título da página
    Title Should Be     Training Wheels Protocol
    # Fecha o navegador
    Close Browser
