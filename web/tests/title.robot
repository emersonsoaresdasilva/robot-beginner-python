*** Settings ***
# Importa as configurações basicas do SeleniumLibrary
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Deve validar o título
    # Valida o título da página
    Title Should Be     Training Wheels Protocol