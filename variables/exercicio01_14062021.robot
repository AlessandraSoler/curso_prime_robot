*** Settings ***
Documentation    Meu teste do exercício

*** Variables ***
&{PESSOA}        nome=Alessandra    sobrenome=Soler    idade=33    naturalidade=Tupã    cor do cabelo=preto    altura=168
@{FRUTAS}        banana    maça    laranja    morango    kiwi

*** Test Cases ***
Meu teste imprimindo um dicinário de PESSOA
    Logar no meu terminal uma PESSOA

Meu teste imprimindo uma lista de FRUTAS
    Logar no meu terminal uma LISTA DE FRUTAS

*** Keywords ***

Logar no meu terminal uma PESSOA
    Log To Console    ${\n}
    Log To Console    ${PESSOA}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.nome}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.sobrenome}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.idade} anos
    Log To Console    ${\n}
    Log To Console    ${PESSOA.naturalidade}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.cor do cabelo}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.altura} centímetros

Logar no meu terminal uma LISTA DE FRUTAS
    Log To Console    ${\n}
    Log To Console    ${FRUTAS}
    Log Many          @{FRUTAS}
    