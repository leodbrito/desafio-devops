# Desafio Devops
Nesse desafio será executado uma estrutura docker com 3 containers chamados: __nginx__, __flask__ e __scripts__. Como os próprios nomes já sugerem cada um fornecerá o seguinte serviço:
* __nginx__:
Servidor web/proxy que terá uma simples página web estática com um link para o arquivo desafio.tar e servirá de proxy para a app em python servida pelo container __flask__;

* __flask__:
Aplicação web em python com o framework Flask que retorna __"wello World"__;

* __scripts__:
Possui o serviço web, mas sua função é a execução dos srcipts do desafio.

As instruções para realização o desafio estarão contidas nos arquivos __README1.txt__, __README2.txt__ e __README3.txt__, localizados na raiz deste projeto.

# Pré-requisitos
Para que a estrutura rode localmente é necessário que o daemon do docker esteja instalado e tenha acesso a internet, ao repositório do docker-hub. A instalação para seu sistema pode ser encontrada no seguinte link: https://docs.docker.com/get-docker/.

# Execução da Estrutura e Testes Relacionados ao Desafio

## - Baixe o projeto para algum diretório ou clone o reposótório:
### Clone with HTTPS
```
git clone https://github.com/leodbrito/desafio-devops.git
```
### ou
### Clone with SSH
```
git clone git@github.com:leodbrito/desafio-devops.git
```

## - Para criar o ambiente e iniciar sua estrutura, entre no diretório raiz do projeto e execute o seguinte comando:
```
sudo make run
```

## - Para a limpeza do ambiente docker, incluindo suas imagens, basta executar o seguinte comando:
```
sudo make clean
```
