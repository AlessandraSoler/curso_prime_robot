*** Settings ***
Documentation        Desafio Web da PrimeExperts feito pela Alessandra Soler
Library              SeleniumLibrary

*** Variables ***
${URL}        http://automationpractice.com

*** Keywords ***
## ---- SETUP
Abrir o Navegador
    Open Browser        browser=chrome

## ---- TEARDOWN
Fechar o Navegador
    Sleep            10s
    Close Browser        

## ---- STEPS

#CASO DE TESTE 01
Acessar a página home do site Automation Practice
    Go To                                ${URL}
    Wait Until Element Is Visible        xpath=//img[contains(@class,'logo img-responsive')]

Digitar o nome do produto1 "${PRODUTO1}" no campo de pesquisa
    Input Text        id=search_query_top        ${PRODUTO1}
    
Clicar no botão pesquisar
    Click Button        name=submit_search

Conferir se o produto1 "${PRODUTO1}" foi listado no site
    Wait Until Element Is Visible        xpath=//img[contains(@alt,'${PRODUTO1}')]
    
Adicionar o produto1 "${PRODUTO1}" no carrinho
    Mouse Over                           xpath=(//a[@class='product-name'][contains(.,'${PRODUTO1}')])[2]
    Click Element                        xpath=//span[contains(.,'Add to cart')]
    Wait Until Element Is Visible        xpath=//span[contains(.,'Proceed to checkout')]
    Click Element                        xpath=//span[contains(.,'Proceed to checkout')]

Conferir se o produto1 "${PRODUTO1}" foi adicionado no carrinho
    Wait Until Element Is Visible        xpath=(//a[contains(.,'${PRODUTO1}')])[4]


#CASO DE TESTE 02
Digitar o nome do produto2 "${PRODUTO2}" no campo de pesquisa
    Input Text        id=search_query_top        ${PRODUTO2}

Conferir a mensagem "${MENSAGEM}"
    Wait Until Element Is Visible        //p[@class='alert alert-warning']
    Element Should Contain               xpath=//p[@class='alert alert-warning']    ${MENSAGEM}

#CASO DE TESTE 03
Passar o mouse por cima da categoria "${CATEGORIA}" no menu principal superior de categorias
    Wait Until Element Is Visible        xpath=//a[contains(@title,'${CATEGORIA}')]
    Mouse Over                           xpath=//a[contains(@title,'${CATEGORIA}')]

Clicar na sub categoria "${SUBCATEGORIA}"
    Wait Until Element Is Visible        xpath=(//a[@title='${SUBCATEGORIA}'])[1]
    Mouse Over                           xpath=(//a[@title='${SUBCATEGORIA}'])[1]
    Click Element                        xpath=(//a[@title='${SUBCATEGORIA}'])[1]

Conferir se os produtos da sub-categoria "${SUBCATEGORIA}" foram mostrados na página
    Sleep                            10s
    Wait Until Element Is Visible    xpath=//span[@class='cat-name'][contains(.,'Summer Dresses')]
    
#CASO DE TESTE 04
Clicar em "Sign in"
    Click Element                        xpath=//a[@class='login'][contains(.,'Sign in')]

Informar um e-mail "${EMAIL}" válido
    Wait Until Element Is Visible        id=email_create    
    Input Text                           id=email_create    ${EMAIL}
    Sleep                                5s
Clicar em "Create an account"
    Click Element                        xpath=//span[contains(.,'Create an account')]

Preencher os dados obrigatórios 
#Só preenchi os dados obrigatórios, os que não eram não preenchi
    Wait Until Element Is Visible    id=email
    Input Text                       id=customer_firstname        text=Alessandra
    Input Text                       id=customer_lastname         text=Soler
    Input Text                       id=email                     text=projetomobilealessandra@gmail.com
    Input Text                       id=passwd                    text=1234@bcd
    Scroll Element Into View         xpath=//label[@for='city']
    Input Text                       id=address1                  text=Rua Brasil, 500 
    Input Text                       id=city                      text=São Paulo
    Scroll Element Into View         xpath=//span[contains(.,'Register')]
    Select From List By Label        id=id_state                  California
    Input Text                       id=postcode                  text=12345
    Select From List By Label        id=id_country                United States
    Input Text                       id=phone_mobile              text=(11) 22222-3333
    Input Text                       id=alias                     text=Ales

Submeter cadastro
    Sleep                5s
    Click Element        xpath=//span[contains(.,'Register')] 

Conferir se o cadastro foi efetuado com sucesso
    Sleep                                5s
    Wait Until Element Is Visible        xpath=//p[@class='info-account'][contains(.,'Welcome to your account. Here you can manage all of your personal information and orders.')]


##Comando para rodar no terminal: robot DesafioWebAlessandra 