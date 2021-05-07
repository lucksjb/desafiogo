# Desafio go - Curso Full Cycle

Este é o primeiro desafio do curso **Full Cycle**. 
O desafio consiste em:

 1. Criar um aplicativo escrito em Golang que ao ser executado escreva  na tela _**Full Cycle Rocks **_. 
 2. Colocar esse aplicativo em uma imagem  docker cujo tamanho máximo não deve ultrapassar os 2MB.


## SOLUÇÃO :

**Criou um Dockerfile que sobe uma imagem Go (**devel**)**
**To build:** _docker build -t lucksjb/desafiogo ._
**To run:** _docker run -it -v $(pwd):/go/src --rm --name go-container lucksjb/desafiogo bash_

Após entrar no bash entrar no **_code  . _**  e codificar normalmente no **$(pwd)** do seu host.

**Dúvida:** eu coloquei no próprio Dockerfile de desenvolvimento a instrução ***VOLUME $(pwd):/go/src*** e a mesma não criou o volume com apenas *docker run* 

**Criou novo Dockerfile-prod otimizado para produção**
**To build:** _docker build -t lucksjb/desafio-go-prod . -f Dockerfile-prod_
**To run:** *docker run --rm lucksjb/desafio-go-prod*


**Ao termino fiz o push para o docker hub:**
*docker push lucksjb/desafio-go-prod*

**Arquivos :**
**Dockerfile** = arquivo docker para desenvolvimento
**Dockerfile-prod** = arquivo docker de produção 
**desafio.go** = código fonte em go
**desafio** = executável em go 
