#!/bin/bash
echo -e "Executando o comando:\nwget nginx/desafio.tar\n"
wget nginx/desafio.tar
if test -a desafio.tar; then
    echo -e "\nArquivo 'desafio.tar' baixado com sucesso!\n"
else
    echo -e "\nO arquivo 'desafio.tar' não pode ser baixado!\n"
fi