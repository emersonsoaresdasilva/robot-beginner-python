*** Settings ***
# Importa as configurações basicas do SeleniumLibrary
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Login com sucesso
    Go To                   ${url}/login
    Input Text              css:input[name=username]        stark
    Input Text              css:input[name=password]        jarvis!
    Click Element           class:btn-login
    # Verifica se estou logado
    Page Should Contain     Olá, Tony Stark. Você acessou a área logada!

Senha incorreta
    [tags]                  login_error
    Go To                   ${url}/login
    Input Text              css:input[name=username]        stark
    Input Text              css:input[name=password]        jarvis
    Click Element           class:btn-login
    # Verifica se estou logado
    ${message}=             Get WebElement       id:flash
    Should Contain          ${message.text}      Senha é invalida!

Usuário não existe
    [tags]                  login_user404
    Go To                   ${url}/login
    Input Text              css:input[name=username]        emerson
    Input Text              css:input[name=password]        123456
    Click Element           class:btn-login
    # Verifica se estou logado
    ${message}=             Get WebElement      id:flash
    Should Contain          ${message.text}     O usuário informado não está cadastrado!