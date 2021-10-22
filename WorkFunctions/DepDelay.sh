#!/bin/bash


DepDelay(){
	
	echo "Bem vindo ao setor de $option_selected!!"
	sleep  1
	echo "	Para descobrir o vôo com maior atraso na saída digite 1." 
	echo "	Para descobrir o vôo com menor atraso na saída digite 2."
	echo "	Para descobrir o tempo total de atraso nas saídas de algum aeroporto digite 3."
	read -p "	Ou teclea qualquer tecla para continuar." option


	case $option in
		1)
			tr ',' '\n' < <(sort -k16 inputdatas.csv | tail -n 1) > output
			selected_option_apresentation_case01
			;;
		2)
			tr ',' '\n' < <(sort -r -k16 inputdatas.csv | tail -n 1) > output
			selected_option_apresentation_case01
			;;
		3)
			read -p "Selecione o aeroporto que deseja verificar: " airport
			total=$(cut -d ',' -f16,17 inputdatas.csv | grep $airport | cut -d ',' -f1 | grep -v '^$' | grep -v - | paste -sd+ | bc)
			total_DepDelay_apresentation
			

			;;
		*)
			echo "Ainda não possuimos essa funcionalidade. Aperte qualquer tecla para continuar."
			read
			;;
	esac
	
}


total_DepDelay_apresentation(){
	awaiting_information_msg
	echo "O tempo total de atraso na decolagem dos vôos do aeroporto $airport é: $total"
	continue_msg
}



