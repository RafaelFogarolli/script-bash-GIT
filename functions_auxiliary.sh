
#!/bin/bash

# Função de boas vinda e apresensa as sessões dispíveis (Colunas)
welcome(){

	sl
	msg_options

	case $selection in
	1)
		fortune | cowsay -f $animal
		;;
	2)
		msg_welcome
		msg_sections
		;;
	*)
		echo -e "\n\n\n"
		cowsay -f $animal Até mais. Foi bom conversar com você!
		;;
	esac

}

selecting_option(){
	echo "================================================================="
	read -p "Digite o número da opção desejada ou pressiona CTRL+C para sair: " option
	echo "================================================================="
	echo -e "\n\n\n"
	option_selected=$(head -n $option input | tail -n +$option)
}

# Função que direciona para a sessão selecionada
selected_option(){

	option_selected_msg

	case $option in
		1)
			no_function
			;;
		2)
			no_function
			;;
		3)
			no_function
			;;
		4)
			no_function
			;;
		5)
			no_function
			;;
		6)
			no_function
			;;
		7)
			no_function
			;;
		8)
			no_function
			;;
		9)
			UniqueCarrier
			;;
		10)
			no_function
			;;
		11)
			no_function
			;;
		12)
			no_function
			;;
		13)
			no_function
			;;
		14)
			AirTime
			;;
		15)
			ArrDelay
			;;
		16)
			DepDelay
			;;
		17)
			no_function
			;;
		18)
			no_function
			;;
		19)
			no_function
			;;
		20)
			no_function
			;;
		21)
			no_function
			;;
		22)
			no_function
			;;
		23)
			no_function
			;;
		24)
			Diverted
			;;
		25)
			no_function
			;;
		26)
			no_function
			;;
		27)
			no_function
			;;
		28)
			no_function
			;;
		29)
			no_function
			;;
		*) 
			cowsay Opção inválida. Tente novamente
			;;

	esac

}



