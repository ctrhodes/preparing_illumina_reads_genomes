#!/bin/bash

dir="/home/fastq/"

for i in $(ls -d $dir/*/)
do
cd ${i%%/}
echo  ${i%%/}

gunzip *gz

echo leaving_$(ps -aef | grep -o `pwd`)
cd ../
done

