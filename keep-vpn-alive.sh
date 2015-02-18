#!/bin/bash
SERVER_IP="ip"
while [ "true" ]
do
        VPNCON=$(ping -c1 -w5 -q $SERVER_IP > /dev/null; echo $?)
        if [[ $VPNCON != 0 ]]; then
                echo "Disconnected, trying to reconnect..."
                (sleep 5s && service openvpn restart)
        else
                echo "Already connected !"
        fi
        sleep 30
