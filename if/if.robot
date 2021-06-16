*** Settings ***
Documentation    Teste para ifs

*** Variables ***
@{PAISES}    Argentina    Chile    Brasil    Uruguai    Brasil    Chile    Brasil

*** Test Cases ***
Teste de ifs
    Imprimir apenas país Brasil

*** Keywords ***
Imprimir apenas país Brasil
        Log To Console    ${\N}
    FOR    ${pais}    IN    @{PAISES}
        IF    ${pais}
        
  PAISESD