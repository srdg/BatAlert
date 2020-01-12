#!/bin/bash
load_notifier()
{
	per=$(upower -i `upower -e | grep 'BAT'` | grep 'percentage')
	cur=$(upower -i `upower -e | grep 'BAT'` | grep 'state')
	percentage=${per:25:${#per}}
	battery=${per:25:2}
	state=${cur:25:${#cur}}
	if [ "$percentage" == "100%" -a "$state" == "charging" ]; then
		notify-send -i ../static/full.png "Charge completed"
		return 1
	fi

	if [ $battery -le 40 -a "$state" == "discharging" ]; then
	    notify-send -i ../static/low.png "Alert : Please charge the battery"
	    return 1
	fi
	
}

while true
do
	load_notifier;
	sleep 10s;
done
