*** Settings ***
# Importa as configurações basicas do SeleniumLibrary
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Selecionando por ID
    Go To                               ${url}/radios
    Select Radio Button                 movies          cap
    Radio Button Should Be Set To       movies          cap
    Sleep                               5

Selecionando por Value
    Go To                               ${url}/radios
    Select Radio Button                 movies           guardians
    Radio Button Should Be Set To       movies           guardians
    Sleep                               5