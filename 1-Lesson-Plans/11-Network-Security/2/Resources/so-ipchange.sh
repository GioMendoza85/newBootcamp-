#!/bin/bash
## Checks for Internet connectivity. If no connection, brings the interface down and up. 
## Lastly, updates IP address on SO if necessary.

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
	echo "Online"
else
	echo "Offline"
	sudo nmcli con down eth0
	sudo nmcli con up eth0
	sudo so-ip-update

fi

