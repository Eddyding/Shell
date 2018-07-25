#!/bin/bash

# Very simple example shell script for managing a CD collection.
# Copyright (C) 1996-2007 Wiley Publishing Inc.

# This program is free software; you can redistribute is and/or  modify
# it under the terms of the GNU General Public License as published by 
# the Free Software Foundation;either version 2 of the License,or (at your option)
# any later version.

# This program is distributed in the hopes that it will be useful,but WITHOUT ANY
# WARRANTY; without even the implied warranty of 
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the GNU General Public
# License for more details.

# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation,Inc.
# 675 Mass Ave,Cambridge, MA 02139, USA.

menu_choice=""
current_cd=""
title_file="titile.cdb"
tracks_file="tracks.cdb"
temp_file=/tmp/cdb.$$
trap 'rm -f $temp_file' EXIT

get_return(){

    echo -e "Press return \c"
    read x
    return 0
}

get_confirm(){

   echo -e "Are you sure?\c"
   while true
   do
       read x
       case
            "$x" in
            Y | yes | y | Yes | YES )
                return 0;;
            n | no | N | No | NO )
                echo 
                ehco  "Cancelled"
                return 0;;
            *) echo "Please enter yes or no" ;;
       esac
   done
}

set_menu_choice(){



}


