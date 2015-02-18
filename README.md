# openVPN-keep-alive for Raspbian
restarts the openVPN client connection
Change SERVER_IP="ip" in keep-vpn-alive.sh to match openVPN server ip address.
move keep-vpn-alive.sh /usr/bin/
move keep-vpn-alive-init.sh to /etc/init.d/
make both files executables.
Add keep-vpn-alive-init.sh to services.
