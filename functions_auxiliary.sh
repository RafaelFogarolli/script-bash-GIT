
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
		9)
			UniqueCarrier
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
		24)
			Diverted
			;;
		*)
			cowsay Opção inválida. Tente novamente
			;;

	esac

}



