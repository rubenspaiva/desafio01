*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.google.com.br
${text}  "robot framework"
${results}  resultados

*** Keywords ***
Abrir browser
    Open Browser  ${URL}  ${Browser}

Digitar a palavra "robot framework"
    Input Text  //*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input  ${text}

Clicar no botão de pesquisar
    Press Keys    none    ENTER

Verificar se a busca trouxe resultados
    Page Should Contain  ${results}

Acessar o terceiro link da busca
    Click Element  xpath=//*[@id="rso"]/div[2]/div/div[1]/a

Verificar se abriu a página correta
    ${titulo} =  Get Title
    Page Should Contain  ${titulo}  ${text}

Fechar browser
    Close Browser


