#!/bin/bash


Diverted(){
	
	section_welcome_msg
	echo "=================================================================="
	echo "	Para descobrir quantos vôos precisaram ser redirecionados digite 1." 
	echo "	Ou teclea qualquer tecla para continuar." 
	echo "=================================================================="
	read option
	

	case $option in
		1)
			total=$(cut -d ',' -f24 inputdatas.csv | grep 1 | wc -l)
			total_diverted_apresentation
			;;
		*)
			no_function_msg
			;;
	esac
	
}

total_diverted_apresentation(){
	awaiting_information_msg
	echo "O total de vôos que precisaram ser redirecionados são: $total"
	continue_msg
}

