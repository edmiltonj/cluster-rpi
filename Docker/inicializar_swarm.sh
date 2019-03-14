#!/bin/bash
ipserver=10.16.79.4
#Inicializar Swarm Manager
echo "Iniciando Swarm on $ipserver" 
docker swarm init --force-new-cluster --advertise-addr $ipserver
