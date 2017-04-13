#! /bin/sh
myfile="List"
export myfile
echo "Display $myfile"
pr -t -n $myfile
./printfile.sh

