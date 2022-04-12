run:
	@ echo -e "\n\nIniciando a estrutura docker com 3 containers:"
	@ echo -e "\t- nginx;"
	@ echo -e "\t- flask;"
	@ echo -e "\t- scripts;\n"
	docker-compose -d u
	@ echo -e "Estrutura iniciada!"
	@ echo -e "\n\n\nConfigurando os hosts no conteiner scripts:\n"
	docker exec scripts bash addhosts.sh
	@ echo -e "\n\n\nConsumindo o arquivo desafio.tar da estrutura docker:\n"
	docker exec scripts bash baixadesafio.sh
	@ echo -e "\n\n\nExecutando o script para ler os arquivos txt e imprimir a string 'ABC' sem que as letras estejam necessariamente nessa ordem:\n"
	docker exec scripts bash imprimeABC.sh
	@ echo -e "\n\n\nChamando a rota /desafio para o server name desafio1 do servidor nginx:\n"
	docker exec scripts curl -s http://desafio1/desafio
	@ echo -e "\n\n\nChamando a rota /desafio para o server name desafio2 do servidor nginx:\n"
	docker exec scripts curl -s http://desafio2/desafio
	@ echo -e "\n\n\nObtendo o resultado 'Hello World' de uma aplicação python:\n"
	docker exec scripts curl -s -H "Host: 'localhost'" http://flask:5000
	@ echo -e "\n\n\nChamando o nginx, através de GET para obter o retorno Hello World da aplicação python:\n"
	docker exec scripts curl -sv http://app
	@ echo -e "\n\n\nTODOS OS TESTES DO DESAFIO FORAM EXECUTADOS, SE DESEJAR LIMPAR O AMBIENTE DOCKER, INCLUSIVE SUAS IMAGENS, EXECUTE O COMANDO ABAIXO:\Nmake dockerclean\n"

dockerclean:
	@ echo -e "\n\nLimpando o ambiente docker, removendo os containers e suas imagens:\n"
	docker-compose down --remove-orphans --rmi "all" -v