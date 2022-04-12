#!/bin/bash
ip_nginx="$(host nginx | awk -F " " '{print $4}')"
echo -e "$ip_nginx desafio1" >> /etc/hosts
echo -e "$ip_nginx desafio2" >> /etc/hosts
echo -e "$ip_nginx app" >> /etc/hosts
echo -e "Arquivo hosts configurado com sucesso:"
cat /etc/hosts