#/bin/bash

for file in $(ls *.tgz)
do
	tar zxvf $file #unzip all .tgz files
done 


for file in $(ls *.tar.gz)
do
	tar zxvf $file #unzip all .tar.gz files
done 


rm *.tgz  *.tar.gz #remove all .tgz  & .tar.gz files
