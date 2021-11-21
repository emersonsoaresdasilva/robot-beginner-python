*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}              http://training-wheels-protocol.herokuapp.com/
${check_thor}       id:thor
${check_ironman}    css:input[value='iron-man']
${check_panther}    xpath://*[@id="checkboxes"]/input[7]

*** Test Cases ***
Marcando opção com ID
    # Execute somente os testes com a tag: robot -i thor checkbox.robot
    [tags]                          thor
    # Abre o navegador
    Open Browser                    ${url}                      edge
    # Acessa uma nova rota
    Go To                           ${url}/checkboxes
    # Seleciona o checkbox com ID "thor"
    Select Checkbox                 ${check_thor}
    # Verifica se o checkbox foi selecionado
    Checkbox Should Be Selected     ${check_thor}
    # Aguarda 05 segundos
    Sleep                           5
    # Fecha o navegador
    Close Browser

Marcando opção com Value
    [tags]                          ironman
    Open Browser                    ${url}                      edge
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_ironman}
    Checkbox Should Be Selected     ${check_ironman}
    Sleep                           5
    Close Browser

Marcando opção com Xpath
    [tags]                          panteranegra
    Open Browser                    ${url}                      edge
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
    Sleep                           5
    Close Browser