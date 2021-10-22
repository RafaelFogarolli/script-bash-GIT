#!/bin/bash

UniqueCarrier(){
	
	section_welcome_msg
	echo "==================================================================="
	read -p "	Sobre qual companhia gostaria de obter informações: " company
	echo "=================================================================="
	echo "=================================================================="
    echo "	Para saber o tempo de atraso total dos vôos da $company digeite 1." 
    echo "	Para saber o total de atrasos da $company digeite 2."
	echo "	Ou teclea qualquer tecla para continuar." 
	echo "=================================================================="
	read option

	case $option in
		1)
			totalChegada=$(cut -d ',' -f9,15 inputdatas.csv | grep $company | cut -d ',' -f2 | sort -k1 | grep -v '^$' | grep -v - | paste -sd+ | bc)
            totalSaida=$(cut -d ',' -f9,16 inputdatas.csv | grep $company | cut -d ',' -f2 | sort -k1 | grep -v '^$' | grep -v - | paste -sd+ | bc)
			total_time_delay_apresentation
			;;
        2)
            allDelay=$(cut -d ',' -f9,15,16 inputdatas.csv | grep $company | grep -v '^$' | grep -v - | wc -l)
            total_flight_delay_apresentation
            ;;
		*)
			no_function_msg
			;;
	esac
	
}


total_time_delay_apresentation(){
    awaiting_information_msg
    (echo "O tempo total de atraso dos vôos da $company é: "; echo "$totalChegada + $totalSaida" | bc)|tr '\n' '\t' 
    continue_msg
}

total_flight_delay_apresentation(){
    awaiting_information_msg
    echo "O total de vôos atrasados da $company é: $allDelay"
    continue_msg
}


