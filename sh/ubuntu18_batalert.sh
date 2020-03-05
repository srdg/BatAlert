#!/bin/bash
load_notifier()
{

	 if [[ $( cat /sys/class/power_supply/BAT1/uevent | grep -i status | cut -d'=' -f2 ) == "Discharging" ]] && (( $( cat /sys/class/power_supply/BAT1/uevent | grep -i capacity | head -n 1 | cut -d'=' -f2  ) <= 40 )); then notify-send -i face-worried "Battery low" "Please plug in the charger"; return 1; fi

	 if [[ $( cat /sys/class/power_supply/BAT1/uevent | grep -i status | cut -d'=' -f2 ) == "Full" ]] && (( $( cat /sys/class/power_supply/BAT1/uevent | grep -i capacity | head -n 1 | cut -d'=' -f2  ) == 100 )); then notify-send -i face-happy "Battery full" "You can  unplug the charger"; return 1; fi

	
}

while true
do
	load_notifier;
	sleep 10s;
	
done
