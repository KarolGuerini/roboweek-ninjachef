***Settings***
Documentation  Suite dos testes de cadastro

## Importando o arquivo base.robot através do diretório resources
Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session


***Test Cases***
Cadastro simples
## Abaixo, tenho o caso de teste em BDD e uma massa de teste que é "karol@gmail.com"

    Dado que acesso a página principal  
    Quando submeto meu e-mail "karol@gmail.com" 
    Então devo ser autenticado

E-mail incorreto
    Dado que acesso a página principal
    Quando submeto meu e-mail "karol$yahoo.com"
    Então devo ver a mensagem "Oops. Informe um email válido!"

E-mail não informado
    Dado que acesso a página principal
    Quando submeto meu e-mail "${EMPTY}"
    Então devo ver a mensagem "Oops. Informe um email válido!"
    