#!/bin/bash


ArrDelay(){
	
	section_welcome_msg
	echo "=================================================================="
	echo "	Para descobrir o vôo com maior atraso na chegada digite 1." 
	echo "	Para descobrir o vôo com menor atraso na chegada digite 2."
	echo "	Para descobrir o tempo total de atraso nas chegadas de algum aeroporto digite 3."
	echo "	Ou teclea qualquer tecla para continuar." 
	echo "=================================================================="
	read option

	case $option in
		1)
			tr ',' '\n' < <(sort -k15 inputdatas.csv | tail -n 1) > output
			selected_option_apresentation_case01
			;;
		2)
			tr ',' '\n' < <(sort -r -k15 inputdatas.csv | tail -n 1) > output
			selected_option_apresentation_case01
			;;
		3)
			read -p "Selecione o aeroporto que deseja verificar: " airport
			total=$(cut -d ',' -f15,18 inputdatas.csv | grep $airport | cut -d ',' -f1 | grep -v '^$' | grep -v - | paste -sd+ | bc)
			total_ArrDelay_apresentation 
			;;
		*)
			no_function_msg
			;;
	esac	
}

total_ArrDelay_apresentation(){
	
	awaiting_information_msgs
	echo "O tempo total de atraso na chegada dos vôos do aeroporto $airport é: $total"
	continue_msg
	
}

