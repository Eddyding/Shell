#!/usr/bin/env bash

whiptail --title "Test Message Box" --msgbox "Create a message box with whiptail. Choose Ok to continue." 10 60


value=$?

if [ $value = 0 ];then
	echo "Yes"
else
	echo "NO"
fi
