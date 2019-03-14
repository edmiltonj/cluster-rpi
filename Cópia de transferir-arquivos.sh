

#!/bin/bash
rasp1=10.16.78.86

echo "Transferindo $rasp1" 
./enviar-diretorios.exp $rasp1 pi raspberry Shared

rasp2=10.16.78.87

echo "Transferindo $rasp2" 
./enviar-diretorios.exp $rasp2 pi raspberry Shared

rasp3=10.16.78.88

echo "Transferindo $rasp3" 
./enviar-diretorios.exp $rasp3 pi raspberry Shared

rasp4=10.16.78.89

echo "Transferindo $rasp4" 
./enviar-diretorios.exp $rasp4 pi raspberry Shared

rasp5=10.16.78.90

echo "Transferindo $rasp5" 
./enviar-diretorios.exp $rasp5 pi raspberry Shared

rasp6=10.16.78.91

echo "Transferindo $rasp6" 
./enviar-diretorios.exp $rasp6 pi raspberry Shared

rasppai2=10.16.78.99

echo "Transferindo $rasppai2" 
./enviar-diretorios.exp $rasppai2 pi raspberry Shared


