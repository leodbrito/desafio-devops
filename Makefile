run:
	@ echo -e "Iniciando a estrutura docker com 3 containers:"
	@ echo -e "\t- nginx;"
	@ echo -e "\t- flask;"
	@ echo -e "\t- scripts;"
	@ docker-compose -d u
	@ echo -e "Estrutura iniciada!"
	@ echo -e "Configurando os hosts no conteiner scripts:"
	@ docker exec scripts bash addhosts.sh
	@ echo -e "Consumindo o arquivo desafio.tar da estrutura docker:"
	@ docker exec scripts bash baixadesafio.sh
	@ echo -e "Executando o script para ler os arquivos txt e imprimir a string 'ABC' sem que as letras estejam necessariamente nessa ordem:"
	@ docker exec scripts bash imprimeABC.sh
	@ echo -e "Chamando a rota /desafio para o server name desafio1 do servidor nginx:"
	@ docker exec scripts curl -sv http://desafio1/desafio
	@ echo -e "Chamando a rota /desafio para o server name desafio2 do servidor nginx:"
	@ docker exec scripts curl -sv http://desafio2/desafio
	@ echo -e "Obtendo o resultado 'Hello World' de uma aplicação python:"
	@ docker exec scripts curl -sv -H "Host: 'localhost'" http://flask:5000
	@ echo -e "Chamando o nginx, através de GET para obter o retorno Hello World da aplicação python:"
	@ docker exec scripts curl -sv http://
	@ echo -e "\nTODOS OS TESTES DO DESAFIO FORAM EXECUTADOS, SE DESEJAR LIMPAR O AMBIENTE DOCKER, INCLUSIVE SUAS IMAGENS, EXECUTE O COMANDO ABAIXO:\Nmake dockerclean\n"

dockerclean:
	@ echo -e "Limpando o ambiente docker, removendo os containers e suas imagens:"
	@ docker-compose down --remove-orphans --rmi "all" -v