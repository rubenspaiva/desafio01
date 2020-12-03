*** Settings ***
Documentation  Desafio01 - Abrir browser chrome
...  digitar a palavra "robot framework"
...  clicar no botão de pesquisar
...  verificar se a busca trouxe resultados
...  acessar o terceiro link da busca
...  verificar se abriu a página correta
...  fechar browser.

Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.google.com.br
${text}  "robot framework"
${results}  resultados

*** Test Cases ***
Abrir browser
    Open Browser  ${URL}  ${Browser}
    sleep  3

Digitar a palavra "robot framework"
    Input Text  //*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input  ${text}

Clicar no botão de pesquisar
    Click Button  //*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]

Verificar se a busca trouxe resultados
    Page Should Contain  ${results}

Acessar o terceiro link da busca
    ${link} =  Get Text  //*[@id="rso"]/div[3]/div/div[1]/a/h3/span
    Click Link  ${link}

Verificar se abriu a página correta
    ${titulo} =  Get Title
    Page Should Contain  ${titulo}  ${text}

Fechar browser
    Close Browser


