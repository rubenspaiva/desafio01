*** Settings ***
Resource  resource.robot
Resource  BDD.robot

*** Test Cases ***
Cenário 01: Fazer uma busca no Google
    Dado que esteja no site da google
    Quando digitar "robot framework"
    Quando clicar no botão pesquisar
        E verificar que a página trouxe resultados
    Quando clicar na terceira pesquisa
        E verificar que está na página correta
    Então fechar o navegador

*** Keywords ***
que esteja no site da google
    Abrir browser

digitar "robot framework"
    Digitar a palavra "robot framework"

clicar no botão pesquisar
    Clicar no botão de pesquisar

verificar que a página trouxe resultados
    Verificar se a busca trouxe resultados

clicar na terceira pesquisa
    Acessar o terceiro link da busca

verificar que está na página correta
    Verificar se abriu a página correta

fechar o navegador
    Fechar browser
