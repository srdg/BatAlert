#!/bin/bash
load_notifier()
{
	per=$(upower -i `upower -e | grep 'BAT'` | grep 'percentage')
	cur=$(upower -i `upower -e | grep 'BAT'` | grep 'state')
	percentage=${per:25:${#per}}
	state=${cur:25:${#cur}}
	if [ "$percentage" == "100%" -a "$state" == "charging" ]; then
		notify-send -i face-smile-big "I'm full, Senpai!" "Thanks for charging me, now pull it out!"
		return 1
	fi

	if [ "$percentage" == "95%" -a "$state" == "discharging" ]; then
	    notify-send -i face-angry "Put the f*cking charger in!" "I'll shut down, I shit you not!"
	    return 1
	fi
	
}

while true
do
	load_notifier;
	sleep 60s;
done