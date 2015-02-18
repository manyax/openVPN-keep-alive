#!/bin/bash +x
while [ "true" ]
do
        VPNCON=$(ping -c1 -w5 -q 10.7.0.1 > /dev/null; echo $?)
        if [[ $VPNCON != 0 ]]; then
                echo "Disconnected, trying to reconnect..."
                (sleep 5s && service openvpn restart)
        else
                echo "Already connected !"
        fi
        sleep 30
