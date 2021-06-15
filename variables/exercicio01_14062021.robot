*** Settings ***
Documentation    Meu teste do exercício01

*** Variables ***
&{PESSOA}        nome=Alessandra    sobrenome=Soler    idade=33    naturalidade=Tupã    cabelo=preto    altura=168
@{FRUTAS}        banana    maça    laranja    morango    kiwi

*** Test Cases ***
Meu teste imprimindo um dicionário de PESSOA01
    Logar no meu terminal uma PESSOA01

Meu teste imprimindo uma lista de FRUTAS01
    Logar no meu terminal uma LISTA DE FRUTAS01

*** Keywords ***

Logar no meu terminal uma PESSOA01
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
    Log To Console    ${PESSOA.cabelo}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.altura} centímetros

Logar no meu terminal uma LISTA DE FRUTAS01
    Log To Console    ${\n}
    Log To Console    ${FRUTAS}
    Log Many          ${FRUTAS}
    Log To Console    ${FRUTAS[0]}
    Log To Console    ${FRUTAS[1]}
    Log To Console    ${FRUTAS[2]}
    Log To Console    ${FRUTAS}[3]
    Log To Console    ${FRUTAS}[4]

    