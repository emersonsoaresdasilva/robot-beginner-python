*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    # Cria uma variável para receber a mensagem de boas vindas
    ${result}=          Welcome     Emerson
    # Exibe mensagem de boas vindas no console
    Log To Console      ${result}
    # Verifica se está retornando a mensagem de boas vindas
    Should Be Equal     ${result}   Olá Emerson, bem vindo ao Curso básico de Robot Framework!