*** Settings ***
Documentation    Teste para ifs - Tomada de decisões

*** Variables ***
@{PAISES}    Argentina    Chile    Brasil    Uruguai    Brasil    Chile    Brasil

*** Test Cases ***
Teste de ifs
    Imprimir apenas país Brasil

*** Keywords ***
Imprimir apenas país Brasil
        Log To Console    ${\n}
    FOR    ${pais}    IN    @{PAISES}
         IF    '${pais}' == 'Brasil'
            Log To Console    Opa, deu Brasil!
        ELSE
            Log To Console    Ah, ${pais} não é Brasil!!          
        END
    END


    ## comando para executar no terminal robot .\if\if.robot