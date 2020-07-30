***Settings***

Documentation       Aqui teremos todas as keywords(palavras-chaves) de automação dos comportamentos 

# Para cada step, eu crio uma keywords

***Keywords***
Dado que acesso a página principal  
    Go To    ${base_url} 


## Transformei o e-mail em uma variável e o robot vai usar a massa de teste "karol@gmail.com"
Quando submeto meu e-mail "${email}"
    Input Text     ${CAMPO_EMAIL}   ${email}
    Click Element   ${BOTAO_ENTRAR}
    

## Para saber se foi autenticado,eu verifico se a página contém o elemento classe dashboard ao fazer o login
Então devo ser autenticado
    Wait Until Page Contains Element    ${DIV_DASH}

## Para saber se foi autenticado, eu verifico se a página contém o elemento   class:alert com a mensagem :Oops. Informe um email válido!
Então devo ver a mensagem "${expect_message}"
    Wait Until Element Contains     ${DIV_ALERT}      ${expect_message}

## Cadastro de pratos


Dado que "${produto}" é um dos meus pratos
    Set Test Variable       ${produto}   ##Siginifica que vou deixar disponível as informações do produto para toda a execução do Test Case

Quando faço o cadastro desse item
    Wait Until Element is Visible   ${BOTAR_ADICIONAR}    5
    Click Element                   ${BOTAR_ADICIONAR} 

    Choose File    ${CAMPO_IMAGEM}        ${EXECDIR}/resources/images/${produto['img']}  ##EXECDIR pega o diretório de execução do projeto

    Input Text          ${CAMPO_NOME}  ${produto['nome']}
    Input Text          ${CAMPO_TIPO}    ${produto['tipo']}
    Input Text          ${CAMPO_PRECO}    ${produto['preco']}
    
    Click Element       ${BOTAO_CADASTRAR}

Então devo ver esse prato no meu dashboard    
    Wait Until Element Contains     ${DIV_LISTA}      ${produto['nome']}    
