*** Settings ***
# Importa as configurações basicas do SeleniumLibrary
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Verifica o valor ao informar o número da linha
    Go To                               ${url}/tables
    # Passa qual é a tabela, a linha e o valor que deve ser encontrado
    Table Row Should Contain            id:actors   1   $ 10.000.000

Descobre a linha pelo texto chave e valida os demais valores
    Go To           ${url}/tables
    # Passa qual é a tabela, o texto chave e os valores que devem ser encontrados
    ${target}=      Get WebElement      xpath:.//tr[contains(.,'@chadwickboseman')]
    # Verifica se o texto chave foi encontrado
    Should Contain  ${target.text}      $ 700.000
    Should Contain  ${target.text}      Pantera Negra