#!/bin/bash


. functions.sh

# Função Main.
main(){
	welcome
	if [ $selection == "2" ]
	then 
		selecting_option
		selected_option
		rm output
	fi
}



while  true
do
	tail -n +2 data/2006-sample.csv > inputdatas.csv
	tr ',' '\n' < <(head -n 1 data/2006-sample.csv) > input
	
	animal=$(tail -n $((1 + $RANDOM % 28)) animais.txt | head -n 1)
	echo $animal
	main
	
	rm inputdatas.csv && rm input
	
	case $selection in
	1) 
		waiting_menu
		sleep 3
		;;
	2)
		waiting_menu
		sleep 3
		;;
	*)
		exit
		;;
	esac

done


