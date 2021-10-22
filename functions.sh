#!/bin/bash



# 1) Descobrir a quantiade de atrasos de uma dada companhia passada como parâmetro.
#    Consultar [essa referência](https://tecadmin.net/tutorial/bash-scripting/bash-command-arguments/) sobre como criar e receber parâmetros em um script bash
# ---------------------------------------------------------------- 2) Descobrir o vôo com maior atraso na chegada (`ArrDelay`) registrado
# ---------------------------------------------------------------- 3) Descobrir o vôo com maior atraso na saída (`DepDelay`) registrado.
# ---------------------------------------------------------------- 4) Descobrir o vôo mais longo (`AirTime`).
# ---------------------------------------------------------------- 5) Contar quantos vôos precisaram ser redirecionados (`Diverted`).
# ---------------------------------------------------------------- 6) Utilizando a dica [nessa resposta](https://stackoverflow.com/a/3096575), calcular o tempo de 
#                                                                     atraso total para a companhia `Delta Air Lines`. Não esquecer de filtrar linhas com dados faltando 
#                                                                     e também com valores negativos (casos em que os vôos são adiantados) '
# ---------------------------------------------------------------- 7) Mostrar o tempo total de atrasos para a decolagem de vôos no aeroporto `JFK`, de Nova Iorque.
# ---------------------------------------------------------------- 8) Mostrar o tempo total de atrasos para pousos no `Aeroporto Internacional de Los Angeles`.
#
##### Bonus
#Utilizar a referência no [link](https://stackoverflow.com/a/1521498), para construir scripts que implementem as seguintes funcionalidades:
#
# 09) Listar qual companhia teve o maior tempo total de atrasos (atrasos somente na decolagem).
# 10) Listar qual aeroporto teve o maior tempo total de atrasos (atrasos somente na decolagem).
#
### Bom trabalho a Todos!

sudo apt-get install figlet
# figlet msg
sudo apt-get install fortune
# fortune
sudo apt-get install cowsay
# cowsay msg
sudo apt-get install sl
# sl




. functions_auxiliary.sh
. messages.sh
. WorkFunctions/AirTime.sh
. WorkFunctions/ArrDelay.sh
. WorkFunctions/DepDelay.sh
. WorkFunctions/Diverted.sh
. WorkFunctions/UniqueCarrier.sh
