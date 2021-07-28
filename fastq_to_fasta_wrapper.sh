#This will convert all the QC'd fastq files to fasta format for blast:

for i in *-QUALITY_PASSED_*.fastq; do
	reformat in=${i} out=%.fasta
done

