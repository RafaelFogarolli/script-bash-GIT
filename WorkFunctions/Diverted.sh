#!/bin/bash


Diverted(){
	
	echo "Bem vindo ao setor de $option_selected!!"
	sleep  1
	echo "	Para descobrir quantos vôos precisaram ser redirecionados digite 1." 
	read -p "	Ou teclea qualquer tecla para continuar." option

	case $option in
		1)
			total=$(cut -d ',' -f24 inputdatas.csv | grep 1 | wc -l)
			total_diverted_apresentation
			;;
		*)
			echo "Ainda não possuimos essa funcionalidade. Aperte qualquer tecla para continuar."
			read
			;;
	esac
	
}

total_diverted_apresentation(){
	awaiting_information_msg
	echo "O total de vôos que precisaram ser redirecionados são: $total"
	continue_msg
}

