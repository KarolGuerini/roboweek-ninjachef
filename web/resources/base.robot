***Settings***
Documentation       Aqui teremos a estrutura base do projeto, o Selenium é importado aqui

Library     SeleniumLibrary

## Importando o arquivo de kws.robot 
Resource    kws.robot
Resource    helpers.robot
Resource    elements.robot

***Variables***
${base_url}      http://ninjachef-qaninja-io.umbler.net/    

***Keywords***
## Hooks 
Open Session
    Open Browser    about:blank     chrome  

Close Session
    Capture Page Screenshot
    Close Browser


## o about blank é uma url que foi chamada para abrir o navegador com uma página em branco, antes de abrir o navegador com a url do meu caso de teste
