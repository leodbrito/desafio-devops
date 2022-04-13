run:
	@ echo "\n\nIniciando a estrutura docker com 3 containers:"
	@ echo " - nginx;"
	@ echo " - flask;"
	@ echo " - scripts;\n"
	docker-compose up -d
	@ echo "Estrutura iniciada!"
	@ echo "\n\n\nConfigurando os hosts no conteiner scripts:\n"
	docker exec scripts bash addhosts.sh
	@ echo "\n\n\nConsumindo o arquivo desafio.tar da estrutura docker:\n"
	docker exec scripts bash baixadesafio.sh
	@ echo "\n\n\nExecutando o script para ler os arquivos txt e imprimir a string 'ABC' sem que as letras estejam necessariamente nessa ordem:\n"
	docker exec scripts bash imprimeABC.sh
	@ echo "\n\n\nChamando a rota /desafio para o server name desafio1 do servidor nginx:\n"
	docker exec scripts curl -s http://desafio1/desafio
	@ echo "\n\n\nChamando a rota /desafio para o server name desafio2 do servidor nginx:\n"
	docker exec scripts curl -s http://desafio2/desafio
	@ echo "\n\n\nObtendo o resultado 'Hello World' de uma aplicação python:\n"
	docker exec scripts curl -s -H "Host: 'localhost'" http://flask:5000
	@ echo "\n\n\nChamando o nginx, através de GET para obter o retorno Hello World da aplicação python:\n"
	docker exec scripts curl -sv http://app
	@ echo "\n\n\nTODOS OS TESTES DO DESAFIO FORAM EXECUTADOS, SE DESEJAR LIMPAR O AMBIENTE DOCKER, INCLUSIVE SUAS IMAGENS, EXECUTE O COMANDO ABAIXO:\Nmake dockerclean\n"

clean:
	@ echo "\n\nLimpando o ambiente docker, removendo os containers e suas imagens:\n"
	docker-compose down --remove-orphans --rmi "all" -v