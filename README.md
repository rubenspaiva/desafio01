# desafio01
Este desafio tem o intuito de mostrar de forma prática um teste automatizado utilizando o Robot Framework.

# Começando
Para executar esse desafio, será necessário instalar os seguintes programas:
* Google Chrome
* Python (última versão)
* PIP (última versão)
* Selenium Library
* Chrome Webdriver

# Features
O desafio consiste em automatizar com robot framework os seguintes passos:
1. abra o navegador
2. acesse o google.com.br
3. realize uma busca pelas palavras-chave “robot framework”
4. cheque se a busca retornou resultados
5. acesse o terceiro resultado
6. verifique se é mostrada a página esperada
7. feche o navegador

# Configuração
Após instalado todos os arquivos com sucesso, abra o cmd e instale o PIP com o comando: pip install robotframework, e instale a biblioteca do selenium com o comando: pip install robotframework-seleniumlibrary.

Além disso, é necessário colocar o chrome webdriver na pasta scripts do python instalado. Para isso, basta abrir o local do arquivo onde o python foi instalado, colar o arquivo lá, extraí-lo.
Caso não consiga localizar a pasta scripts do python, deixe o arquivo no mesmo local que o arquivo .robot.

# Execução
Para executar o arquivo, basta abrir o cmd (prompt de comando), acessar a pasta em que os 3 arquivos estão localizados, e executar o arquivo com o seguinte comando: robot -d results desafio1.robot

# Links
* https://robotframework.org/
* https://www.python.org/downloads/
* https://chromedriver.chromium.org/downloads
* https://github.com/robotframework/SeleniumLibrary/

