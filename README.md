# preparing_illumina_reads_genomes

This repository contains scripts for preparing raw illumina read files and reference genomes. After completing the scripts in this repository, the illumina reads and any required reference genomes should be ready for use as input in standard bioinformatic pipelines (i.e. genomic alignment, visualizaiton, etc).

The basic functions of the scripts are to:

fastq_decompress.sh

decompress fastq files as they are commonly compressed to save space

format_Ensembl_ref_genome_headers.sh

format Ensembl reference chromosome headers to ensure downstream software does not produce an error. This script in particular searches for chromosomes in the format >1 or >13 (i.e. chromosomes 1 or 13) and converts the header to chr1 or chr13. This is may be required when preparing custom reference genomes as many genomic tools require genomes, trancriptomes, etc to have consistent formating across files.

illumina_chastity_filtering.sh

removes reads flagged as unusable by Illumina's internal software. The flagged reads, or non-pass filtered, reads have signal overlap from adjacent clusters on the flow cells. This overlap is detected on the raw image files and therefore produce equivocal results when assigning quality values to nucleotides in adjacent flow cell spots.
