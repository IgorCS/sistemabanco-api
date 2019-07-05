# teste - controle bancario_app

Esse sistema é resultante da avaliação de um processo seletivo de uma empresa de tecnologia. É responsável por inserir, atualizar e remover dados de uma conta bancária consumindo uma api restfull.

--------------
## Requisitos do projeto

* O fluxo de autorização deve seguir o padrão OAuth 2.0
--------------

## Dependências do projeto

* Java 11
* Tomcat 8.5
* SGBD H2
* Spring Boot (oauth2) 

Instalar as dependências do projeto utilizando o maven.

--------------
## Como rodar?

1.Faça o clone desse projeto para sua máquina
```
https://github.com/IgorCS/sistemabanco-api
```

2.Abra o eclipse

3.Clique em File > Import

4.Selecione "Existing Maven Projects" e clique em "Next"

5.Clique em "Browse" e selecione o diretório do projeto.

7.Clique em "Next"

7.1° Clicar em Run e na Opçao Spring Boot App caso esteja configurado no eclipse.

8.Execute o script DUMP.sql no SGBD MySQL caso o H2 não esteja configurado.

9.Acesse o projeto no postman.

10.Na opção Body com a url(http://localhost:8080/oauth/token),você irá colocar a configuração  (grant_type - password),username(banco) e password (123456)

11.Na opção autorization você coloca a opção Basci Auth (com o username:testebanco e passord:123456)

12.0.Na opção Body com a url(http://localhost:8080/cliente),você irá colocar a configuração  (grant_type - password),username(testebanco) e password (123456)

13.0.Na opção Body com a url(http://localhost:8080/cliente),você irá colocar a configuração  (grant_type - password),username(testebanco) e password (123456) utilizando o metódo GET

14. Na opção Autorization você irá colocar o bearer token que foi gerado ao fazer o Send na url do servidor em seguida clicar também em SEND e você irá listar os clientes da aplicação
no formato Json. 
```
Metódo Main (aplicação)
```
1° No Arquivo controle-bancario_app.rar você irá descompactar o arquivo em outra pasta que não seja do projeto do spring boot obs.: Fiz isso porquê irá funcionar como o cliente da aplicação. 

2° Após descompactar  o projeto com o metódo main você irá no eclipse e importar na opção Projeto existente no workspace.

3°  O projeto tem um pacote chamdo gui é nele que tá o Arquivo App da aplicação.

4°Clicar em Run Java Aplicattion obs.: Fazer isto com as configurações do Spring Boot Ativa pois nele irá consumir os clientes da Api ao fazer a operação de Extrato.

5°(A aplicação)

5.1° Ao abrir o Aplicativo Desktop irá aparacer uma Aba Cadastro com o Menu Conta
5.1.1° Abrir uma conta ex.: '0021' e tipo e o nome do usuário.

5.2° Fazer uma operação ex: cadastrar a conta informada no cadastro 0021 e em seguida escolher o tipo (receita/despesa) e o Nome que será vinculado a Conta;

5.3° Em seguida ir na opção Extrato e lá você irá verificar o extrato dessa pessoa digitando o numéro da conta ,você pode entradas e saídas como depósito ou saque e em seguida verificar o extrato e o clinte rest api irá exibir o nome da pessoa no console.

obs.: Este projeto foi baseado na documentação abaixo, pois eu quis apenas demonstrar o funcionamento do oauth2 para definir melhor regras de segurança e apresentação do projeto.
Fontes:
 'https://www.youtube.com/watch?v=UsM2BY20Ux4'
 'https://github.com/algaworks/videoaula-spring-boot-spring-security-oauth '
