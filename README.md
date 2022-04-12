# Desafio Devops
Nesse desafio será executado uma estrutura docker com 3 containers chamados: **nginx**, **flask** e **scripts**. Como os próprios nomes já sugerem cada um fornecerá o seguinte serviço:
* nginx:
Servidor web/proxy que terá uma simples página web estática com o arquivo desafio.tar e servirá de proxy para a app em python servida pelo container **flask**;

* flask:
Aplicação web em python com o framework Flask que retorna **"wello World"**;

* scripts:
Possui o serviço web, mas sua função é a execução dos srcipts do desafio.

# Pré-requisitos
Para que a estrutura rode localmente é necessário que o daemon do docker esteja instalado. A insta;lação para seu seistema pode ser encontrada no seguinte link: https://docs.docker.com/get-docker/

# Execução da Estrutura e Testes Relacionados ao Desafio

## Baixe o projeto para algum diretório ou clone o reposótório
### Clone with HTTPS
```
git clone https://github.com/leodbrito/desafio-devops.git
```
### ou
### Clone with SSH
```
git clone git@github.com:leodbrito/desafio-devops.git
```

## No diretório raiz do projeto apenas execute o seguinte comando:
```
make run
```

## Para a limpeza do ambiente docker basta executar o seguinte comando:
```
make dockerclean
```
