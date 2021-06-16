*** Settings ***
Documentation     Exercício de FOR

*** Variables ***
@{PAISES}    Brasil    Argentina    Chile    Paraguai    Uruguai

*** Test Cases ***
Teste de contar numeros
    Imprimir intervalo     0     10

Teste dos paises
    Imprimir uma lista

*** Keywords ***
Imprimir intervalo
    [Arguments]    ${A}     ${B}
        Log To Console    ${\n}
    FOR  ${counter}  IN RANGE     ${A}      ${B}+1
        Log To Console    Estou no número: ${counter}!
    END
        
Imprimir uma lista
        Log To Console    ${\n}
    FOR    ${pais}    IN    @{PAISES}
        Log To Console    País: ${pais}
    END

    ## comando para executar no terminal robot .\For\exercicio03_15062021.robot