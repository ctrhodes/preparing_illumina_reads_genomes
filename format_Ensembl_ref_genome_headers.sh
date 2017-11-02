#!/bin/bash

EXTRACTED_REFS = "~/genomes/hg38/extracted_reference_fasta"

mkdir tmp
mkdir std_headers

for sample in *fa
do
cd $EXTRACTED_REFS
var=$(grep -ohE ^\>[A-Z0-9]\{1,2\} $sample)
sed "1s/.*/$var/" $sample > ./tmp/half_$sample

cd ./tmp
sed "1s/[\>]/\>chr/" half_$sample > ../std_headers/$sample

rm half_$sample

done
