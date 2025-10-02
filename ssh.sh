#!/usr/bin/env bash

# Improve error handling
set -eo pipefail

# Check the first parameter.
case ${1,,} in
	status)
		sudo systemctl status ssh
		;;
	on)
		sudo systemctl start ssh
		;;
	off)
      sudo systemctl stop ssh		
		;;
	*)
		echo "usage: ssh.sh [status | on | off]"
		;;
esac 
