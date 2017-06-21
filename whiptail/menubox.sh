#!/usr/bin/env bash

whiptail --title "Test Menu Dialog" --menu "Choose your option"  15 60 4  "1" Grilled Spicy Sausage "2" Grilled Halloumi Cheese 3>&1 1>&2 2>&3 

