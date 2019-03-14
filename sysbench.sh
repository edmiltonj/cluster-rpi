#!/bin/bash
#Este teste se baseia em encontrar o maior numero primo até o limite informado por max_prime.
#O teste é executado fornecendo N requisições de chamadas.(Parametro:num_requisicoes)
#Pode se dividir em threads a serem executadas em paralelo em cada nucleo de CPU(Parametro:num_threads)
#Tempo máximo está em segundos
num_requisicoes1=100
num_requisicoes2=200
num_requisicoes3=300
num_requisicoes4=400
num_threads1=1
num_threads2=2
num_threads3=3
num_threads4=4
max_prime=100000
max_prime_pequeno=1000
max_prime_grande=100000

max_time=60
hostname=`/bin/hostname`
datateste=`date +%d-%m-%y_%H-%M`
mkdir ./${datateste}__${hostname}

echo "Executando testes . . ."
for i in 1 2 3 4 5 
do
datateste1=`date +%d-%m-%y_%H-%M-%S`
path=./${datateste}__${hostname}/${datateste1}.txt
#echo "N Threads = $num_threads , N Requisicoes = $num_requisicoes"
#echo "Modo Debug=ON, Numero primo limite=$max_prime"

	echo "Ciclo de testes: $i"
	echo "">$path
	echo "$hostname"
	echo "$datateste1"
	echo "################################################################################" >> $path
	echo "\nHostname:">>$path
	cat /etc/hostname >>$path
	date >> $path
	echo "\n">>$path
	
	#Resolver o conjunto de $num_requisicoes requisicoes de econtrar o $max_prime com $num_threads
	echo "################################################################################" >> $path
	echo "\nTeste de Stress 1\n">>$path
	echo "\nTeste de Stress 1\n"
	sysbench --test=cpu --cpu-max-prime=$max_prime --max-requests=$num_requisicoes1 --num-threads=$num_threads1 --debug run >> $path
	echo "\n">>$path
	echo "################################################################################" >> $path
	echo "\nTeste de Stress 2">>$path
	echo "\nTeste de Stress 2\n"
	echo "\n">>$path
	sysbench --test=cpu --cpu-max-prime=$max_prime --max-requests=$num_requisicoes2 --num-threads=$num_threads2 --debug run >> $path
	echo "\n">>$path
	echo "################################################################################" >> $path
	echo "\nTeste de Stress 3">>$path
	echo "\nTeste de Stress 3\n"
	echo "\n">>$path
	sysbench --test=cpu --cpu-max-prime=$max_prime --max-requests=$num_requisicoes3 --num-threads=$num_threads3 --debug run >> $path
	echo "\n">>$path
	echo "################################################################################" >> $path
	echo "\nTeste de Stress 4">>$path
	echo "\nTeste de Stress 4\n"
	echo "\n">>$path
	sysbench --test=cpu --cpu-max-prime=$max_prime --max-requests=$num_requisicoes4 --num-threads=$num_threads4 --debug run >> $path
	echo "\n">>$path
	
	
	#Quantas requisições ele consegue fazer em $max_time segundos com o $max_prime_pequeno,
	#com 1, 2, 3, ou 4 threads realizando as atividades.
	echo "################################################################################" >> $path
	echo "\nTeste de Stress 5">>$path
	echo "\nTeste de Stress 5\n"
	sysbench --test=cpu --cpu-max-prime=$max_prime_pequeno --max-requests=100000000 --num-threads=$num_threads1 --debug --max-time=$max_time run >> $path
	echo "\n">>$path
	echo "################################################################################" >> $path
	echo "\nTeste de Stress 6">>$path
	echo "\nTeste de Stress 6\n"
	sysbench --test=cpu --cpu-max-prime=$max_prime_pequeno --max-requests=100000000 --num-threads=$num_threads2 --debug --max-time=$max_time run >> $path
	echo "\n">>$path
	echo "################################################################################" >> $path
	echo "\nTeste de Stress 7">>$path
	echo "\nTeste de Stress 7\n"
	sysbench --test=cpu --cpu-max-prime=$max_prime_pequeno --max-requests=100000000 --num-threads=$num_threads3 --debug --max-time=$max_time run >> $path
	echo "\n">>$path
	echo "################################################################################" >> $path
	echo "\nTeste de Stress 8">>$path
	echo "\nTeste de Stress 8\n"
	sysbench --test=cpu --cpu-max-prime=$max_prime_pequeno --max-requests=100000000 --num-threads=$num_threads4 --debug --max-time=$max_time run >> $path
	echo "\n">>$path
	echo "################################################################################" >> $path


	#Quantas requisições ele consegue fazer em $max_time segundos com o $max_prime_grande,
	#com 1, 2, 3, ou 4 threads realizando as atividades.
	echo "################################################################################" >> $path
	echo "\nTeste de Stress 9">>$path
	echo "\nTeste de Stress 9\n"
	sysbench --test=cpu --cpu-max-prime=$max_prime_grande --max-requests=100000000 --num-threads=$num_threads1 --debug --max-time=$max_time run >> $path
	echo "\n">>$path
	echo "################################################################################" >> $path
	echo "\nTeste de Stress 10">>$path
	echo "\nTeste de Stress 10\n"
	sysbench --test=cpu --cpu-max-prime=$max_prime_grande --max-requests=100000000 --num-threads=$num_threads2 --debug --max-time=$max_time run >> $path
	echo "\n">>$path
	echo "################################################################################" >> $path
	echo "\nTeste de Stress 11">>$path
	echo "\nTeste de Stress 11\n"
	sysbench --test=cpu --cpu-max-prime=$max_prime_grande --max-requests=100000000 --num-threads=$num_threads3 --debug --max-time=$max_time run >> $path
	echo "\n">>$path
	echo "################################################################################" >> $path
	echo "\nTeste de Stress 12">>$path
	echo "\nTeste de Stress 12\n"
	sysbench --test=cpu --cpu-max-prime=$max_prime_grande --max-requests=100000000 --num-threads=$num_threads4 --debug --max-time=$max_time run >> $path
	echo "\n">>$path
	echo "################################################################################" >> $path




done
	echo "\nTestes finalizados . . ."
	
	
