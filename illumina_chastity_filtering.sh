#!/bin/bash

pathname=( "/home/chris/fastq/GBM_RNASeq/FCC28YK_20130729/Sample_GBM1/process")

cd $pathname
pwd

for i in *fastq.gz
do
sample=$(basename ${i%%/})
describer=$(echo ${sample} | sed 's/.fastq.gz//')

echo "sample is "$sample
echo "describer is "$describer

#zcat $sample

#Where quality_filter represents a single boolean value in which "Y" means the read failed filtering performed by the Illumina Pipeline, "N" otherwise.
zcat $sample | awk '{if (substr($2, 3, 1) == "N") {f=0;print $1} else if (substr($2, 3, 1) == "Y") {f=1} else if ( f == 0) {print $1 } }' > filtered_$describer.fastq

done


for i in *fastq
do
sample=$(basename ${i%%/})
describer=$(echo ${sample} | sed 's/_00..fastq//')

echo "sample is "$sample
echo "describer is "$describer

#zcat $sample

cat $sample >> $describer.fastq

done
