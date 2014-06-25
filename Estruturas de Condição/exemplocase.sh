#!/bin/bash
# Exemplo de Menu - IFES Campus Cachoeiro de Itapemirim
# Rafael S. Guimaraes <rafaelg@ifes.edu.br>
#
# Criando o MENU
clear
echo "########## MENU ##########"
echo "# 1 - Cadastrar Usuário  #"
echo "# 2 - Deletar Usuário    #"
echo "# 3 - Cadastrar Senha    #"
echo "# 4 - Listar usuários    #"
echo "# 5 - Sair 	       #"
echo "##########################"
echo "Escolha uma opção: "
read OPC

# Utilizando Case para selecionar a opcao desejada.
case $OPC in
	1)
	  # Implementacao da criacao do usuario
	  clear
          echo "Informe o nome do usuário: "
	  read NOME
	  useradd $NOME
	  if [ $? -eq 0 ];then
	  	echo "Usuário cadastrado com sucesso"
	  else
		echo "Falha ao cadastrar usuário"
	  fi
	  ;;
	2)echo "Opcao 2";;
	3)echo "Opcao 3";;
	4)echo "Opcao 4";;
	5)echo "Opcao 5";;
	*)echo "Opção Inválida";;
esac
