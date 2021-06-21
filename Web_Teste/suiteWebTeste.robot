*** Settings ***

Documentation    Suíte de testes Web - Site: http://automationpractice.com
Resource          resourceWebTeste.robot
Suite Setup      Abrir o Navegador
Suite Teardown   Fechar o Navegador

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site
    Adicionar o produto "Blouse" no carrinho
    Conferir se o produto "Blouse" foi adicionado no carrinho