for i in ERR*.fastq; do
	bbduk in=${i} out=QC_${i} maq=20
done

for i in QC_ERR*; do
        reformat in=${i} out=%.fasta
done
