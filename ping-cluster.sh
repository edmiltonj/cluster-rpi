#!/bin/bash
rasp1=10.16.1.1
#Teste de ping Raspberry=Pi 7886
echo "Testando $rasp1" 
ping $rasp1 -c 3| grep "0% packet loss"

rasp2=10.16.1.2
#Teste de ping Raspberry=Pi 7887
echo "Testando $rasp2" 
ping $rasp2 -c 3| grep "0% packet loss"

rasp3=10.16.1.3
#Teste de ping Raspberry=Pi 7888
echo "Testando $rasp3" 
ping $rasp3 -c 3| grep "0% packet loss"

rasp4=10.16.1.4
#Teste de ping Raspberry=Pi 7889
echo "Testando $rasp4" 
ping $rasp4 -c 3| grep "0% packet loss"

rasp5=10.16.1.5
#Teste de ping Raspberry=Pi 7890
echo "Testando $rasp5" 
ping $rasp5 -c 3| grep "0% packet loss"

rasp6=10.16.1.6
#Teste de ping Raspberry=Pi 7887
echo "Testando $rasp6" 
ping $rasp6 -c 3| grep "0% packet loss"

rasppai2=10.16.1.31
#Teste de ping Raspberry=Pi 7899
echo "Testando $rasppai2" 
ping $rasppai2 -c 3| grep "0% packet loss"


