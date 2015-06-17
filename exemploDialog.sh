#!/bin/bash

cadastrarUsuario(){
	useradd $1
}

RES=$(dialog --stdout --menu "Teste" 0 0 0 1 "Interfaces de Rede" 2 "Roteamento" 3 "Utilitários" 0 "Sair")

case $RES in
	1)
		AUX=$(dialog --stdout --menu "Teste" 0 0 0 1 "Configurar Endereço" 2 "Iniciar Interface" 3 "Parar Interface" 4 "Configurar nome da máquina" 5 "Configurar DNS" 0 "Voltar")
		case $AUX in
			1) INT=$(dialog --stdout --inputbox "Informe o nome da interface" 0 0)
			   IP=$(dialog --stdout --inputbox "Informe o endereco IP" 0 0)
			   MASK=$(dialog --stdout --inputbox "Informe a máscara" 0 0)
			   echo "ifconfig $INT $IP netmask $MASK"
			   ;;
		esac
		;;
	2) AUX=$(dialog --stdout --menu "Teste" 0 0 0 1 "Adicionar rota" 2 "Remover Rota" 3 "Configurar Gateway" 0 "Voltar")
		;;
	3) AUX=$(dialog --stdout --menu "Teste" 0 0 0 1 "Ping" 2 "Traceroute" 0 "Vol    tar")
esac
