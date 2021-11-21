*** Settings ***
# Importa as configurações basicas do SeleniumLibrary
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Variables ***
${check_thor}       id:thor
${check_ironman}    css:input[value='iron-man']
${check_panther}    xpath://*[@id="checkboxes"]/input[7]

*** Test Cases ***
Marcando opção com ID
    # Execute somente os testes com a tag: robot -i thor checkbox.robot
    [tags]                          thor
    # Acessa uma nova rota
    Go To                           ${url}/checkboxes
    # Seleciona o checkbox com ID "thor"
    Select Checkbox                 ${check_thor}
    # Verifica se o checkbox foi selecionado
    Checkbox Should Be Selected     ${check_thor}
    # Aguarda 05 segundos
    Sleep                           5

Marcando opção com Value
    [tags]                          ironman
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_ironman}
    Checkbox Should Be Selected     ${check_ironman}
    Sleep                           5

Marcando opção com Xpath
    [tags]                          panteranegra
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
    Sleep                           5