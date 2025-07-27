#!/usr/bin/env bash

# Check the first parameter.
case ${1,,} in
	status)
		sudo nmcli device status | grep wifi
		;;
	on)
		sudo nmcli radio wifi on
		;;
	off)
		sudo nmcli radio wifi off
		;;
	*)
		echo "usage: wifi.sh [status | on | off]"
		;;
esac
