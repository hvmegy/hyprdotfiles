#!/usr/bin/env bash

op=$( echo -e " Poweroff\n Reboot\n Lock\n Logout" | wofi -i --dmenu | awk '{print tolower($2)}' )

case $op in 
        poweroff)
                poweroff
		;;
        reboot)
		reboot
		;;
        lock)
		hyprlock 
                ;;
        logout)
		hyprctl dispatcher exit
                ;;
esac
