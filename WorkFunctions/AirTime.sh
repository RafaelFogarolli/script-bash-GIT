#!/bin/bash


AirTime(){
	
	section_welcome_msg
	echo "=================================================================="
	echo "	Para descobrir o vôo com maior tempo de duração digite 1." 
	echo "	Para descobrir o vôo com menor tempo de duração digite 2."
	echo "	Ou teclea qualquer tecla para continuar."
	echo "==================================================================" 
	read option
	

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
			
			no_function_msg
			;;
	esac

	
}
