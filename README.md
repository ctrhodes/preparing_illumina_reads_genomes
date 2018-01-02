# preparing_illumina_reads_genomes

This repository contains scripts for preparing raw illumina read files and reference genomes. After completing the scripts in this repository, the illumina reads and any required reference genomes should be ready for use as input in standard bioinformatic pipelines (i.e. genomic alignment, visualizaiton, etc).

The basic functions of the scripts are to:

decompress fastq files as they are commonly compressed to save space

illumina_chastity_filtering.sh - removes reads flagged as unusable by Illumina's internal software. The flagged reads, or non-pass filtered, reads have signal overlap from adjacent clusters on the flow cells. This overlap is detected on the raw image files and therefore produce equivocal results when assigning quality values to nucleotides in adjacent flow cell spots.

format Ensembl reference genome headers to ensure downstream software does not produce an error. This is a common step when preparing custom reference genomes.
