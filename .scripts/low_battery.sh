#!/bin/sh
acpi -b | awk -F'[,:%]' '{print $2, $3}' | {
	read -r status capacity
    
    if [ "$status" = Discharging -a "$capacity" -lt 10 ]; then
		logger "Low battery threshold"
		notify-send "Low Battery"
	fi


	if [ "$status" = Discharging -a "$capacity" -lt 5 ]; then
		logger "Critical battery threshold"
		systemctl hibernate
	fi
}
