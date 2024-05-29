#!/bin/bash
SERVICE="nginx"
# check if the service  is running, if not, start it

if systemctl is-active --quiet $SERVICE; then 
	echo "$SERVICE isrunning"
else
	echo "$SERVICE is not running"
	sudo systemctl start $SERVICE
fi
