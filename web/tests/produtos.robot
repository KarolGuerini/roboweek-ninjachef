***Settings***
Documentation       Cadastro de produtos/pratos
...                 Sendo um cozinheiro amador
...                 Quero cadastrar meus melhores pratos
...                 Para que eu possa cozinhá-los e vendê-los para outras pessoas
## Acima temos a documentação da descrição da funcionalidade + a história de usuário

Resource        ../resources/base.robot

Test Setup      Login Session  karol@gmail.com
Test Teardown   Close Session


***Variables***
## Aqui temos um dicionário do robot, onde temos um conjuto de chave=valor, instanciado pelo &
&{nhoque}=      img=nhoque.jpg  nome=Nhoque molho páprica       tipo=massa      preco=20.00

***Test Cases***
Novo prato
    Dado que "${nhoque}" é um dos meus pratos
    Quando faço o cadastro desse item
    Então devo ver esse prato no meu dashboard






