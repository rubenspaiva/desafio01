*** Settings ***
Resource  resource.robot
Resource  BDD.robot
Suite Teardown  Fechar browser

*** Test Cases ***
Cenário 01: Fazer uma busca no Google
    Dado que esteja no site da google
    Quando digitar "robot framework"
        E clicar no botão pesquisar
    Então clicar na terceira pesquisa

*** Keywords ***
que esteja no site da google
    Abrir browser

digitar "robot framework"
    Digitar a palavra "robot framework"

clicar no botão pesquisar
    Clicar no botão de pesquisar

clicar na terceira pesquisa
    Verificar se a busca trouxe resultados
    Acessar o terceiro link da busca
    Verificar se abriu a página correta
