#!/bin/bash


AirTime(){
	
	echo "Bem vindo ao setor de $option_selected!!"
	sleep  1
	echo "	Para descobrir o vôo com maior tempo de duração digite 1." 
	echo "	Para descobrir o vôo com menor tempo de duração digite 2."
	read -p "	Ou teclea qualquer tecla para continuar." option
	

	case $option in
		1)
			tr ',' '\n' < <(sort -k14 inputdatas.csv | tail -n 1) > output
			selected_option_apresentation_case01
			;;
		2)
			tr ',' '\n' < <(sort -r -k14 inputdatas.csv | tail -n 1) > output
			selected_option_apresentation_case01
			;;
		*)
			echo "Ainda não possuimos essa funcionalidade. Aperte qualquer tecla para continuar."
			read
			;;
	esac

	
}
