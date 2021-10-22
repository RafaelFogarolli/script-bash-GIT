#!/bin/bash

msg_options(){
    clear

    figlet ========= 
	figlet Bem vindo 
    figlet =========

    echo -e "\n\n"
    echo "================================================================="
    echo "======== Digite 01 para receber a sorte do dia.          ========"
    echo "======== Digite 02 para saber informações sobre os vôos. ========"
    read -p "======== Digite qualquer tecla para sair.                ======>>" selection
    echo -e "\n\n\n"

}

msg_welcome(){

    figlet ========
	echo "  Iremos te apresentar as sessões disponíveis."
	echo "  Pressione qualquer tecla para continuar."
    figlet ========
	read
    echo -e "\n\n\n\n"
}

msg_sections(){
	field=0
	while read line;
	do
		((field++))
		echo "============================================="
		echo "       Field $field : $line"
	done < input

	echo "============================================="
	echo -e "\n\n"
}

option_selected_msg(){
    echo "====================================================================="
    echo "======== Ah, você deseja informações sobre $option_selected.         ========"
	echo "======== Vou te encaminhar para o setor resposável. Aguarde. ========" 
    echo "====================================================================="
	echo -e "\n\n\n\n\n\n\n\n\n\n"
	sleep 2
}

no_function(){
	cowsay Ainda não possuimos essa funcionalidade. Aperte qualquer tecla para continuar.
	read
}

# Função que printa na tela as informações do vôo selecionado.
selected_option_apresentation_case01(){

    echo -e "\n\n\n\n"
	cowsay As informações selecionadas estão sendo carregadas. Aguarde!!
	echo -e "\n\n\n"

	sleep 2
	i=1 j=1
	while [ $i -le $field -a $j -le $field ];
	do
		echo "$(sed -n -e "${i}p" input) ---> $(sed -n -e "${j}p" output)"
		i=$(( i+1 )); j=$(( j+1 ))
	done

    sleep 3
	echo -e "\n\n\n"
    cowsay Aperte qualquer tecla para continuar
	read
}

awaiting_information_msg(){
	
	echo "As informações selecionadas estão sendo carregadas. Aguarde"
	echo -e "\n\n\n"
	sleep 2
}

continue_msg(){
	echo -e "\n\n\nAperte qualquer tecla para continuar"
	read
}

waiting_menu(){
    echo -e "\n\n"
    echo "****************************************************************************"
    echo "*** Pressione CTRL+C para sair ou aguarde para retornar ao menu inicial. ***"
    echo "****************************************************************************"
    echo -e "\n\n"
}