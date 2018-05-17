#! /bin/sh

myfile="~/Desktop/file.list"

if [ -f "$myfile" ]; then
	ls > ~/Desktop/file.list    
    exit 0
else
    cd ..
    echo  bye >  jjj
fi
