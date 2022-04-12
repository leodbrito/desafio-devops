#!/bin/bash
if test -a desafio.tar; then
    tar -xf desafio.tar
    string=""
    for line in $(egrep -i 'a|b|c' desafio/[1-9]*.txt | sed s/.*://g); do
        string="$string$line"
        if [[ $string == 'abc' || $string == 'acb' || $string == 'bac' || $string == 'bca' || $string == 'cab' || $string == 'cba' ]]; then
            echo $string
            string=""
        fi
    done;
    rm -rf desafio
else
echo -e "\nO arquivo desafio.tar não foi encontrado!\n"
fi