#!/bin/bash
# Exemplo de Menu - IFES Campus Cachoeiro de Itapemirim
# Rafael S. Guimaraes <rafaelg@ifes.edu.br>
#
# MENU gerência de usuários
# 
#######################################################
cadastrarUsuario(){
	# Implementacao da criacao do usuario
        clear
        echo "Informe o nome do usuário: "
        read NOME
        useradd $NOME
        if [ $? -eq 0 ];then
              echo "Usuário cadastrado com sucesso"
              sleep 2
        else
              echo "Falha ao cadastrar usuário"
              sleep 2
        fi
}
deletarUsuario(){
	clear
	# Funcao para deletar usuario
	echo "Informe  o nome do usuário"
	read NOME
	userdel $NOME
	if [ $? -eq 0 ];then
		echo "Usuario deletedo com sucesso..."
		sleep 2
	else
		echo "Falha ao deletar usuário..."
		sleep 2
	fi
}
cadastrarSenha(){
	clear
	# Funcao para configurar uma senha ao usuário.
	echo "Informe o nome do usuário"
	read NOME
	passwd $NOME
	if [ $? -eq 0 ];then
		echo "Senha alterada com sucesso..."
		sleep 2
	else
		echo "Falha ao alterar senha do usuário..."
		sleep 2
	fi
}
listarUsuarios(){
	for i in $(cat /etc/passwd | cut -d: -f1);do
		echo "====  $i  ==="
	done
	read	
}
	
OPC=0
while [ $OPC -ne 5 ];do
    clear
    echo "########## MENU ##########"
    echo "# 1 - Cadastrar Usuário  #"
    echo "# 2 - Deletar Usuário    #"
    echo "# 3 - Cadastrar Senha    #"
    echo "# 4 - Listar usuários    #"
    echo "# 5 - Sair               #"
    echo "##########################"
    echo "Escolha uma opção: "
    read OPC

    # Utilizando Case para selecionar a opcao desejada.
    case $OPC in
        1) cadastrarUsuario;;
	2) deletarUsuario;;
	3) cadastrarSenha;;
	4) listarUsuarios;;
	5) break;;
	*) echo "Opção Inválida";;
    esac
done
