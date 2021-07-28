inner () {
	local gene=$2
	result=$(awk -F "\t" '{if($2 == "'$gene'") {print $0}}' $1 | wc -l)
        gene_length=$(awk -F "\t" '{if($2 == "'$gene'") {print $14; exit}}' $1)
        genome_name=$(awk -F "\t" '{if($1 == "'$gene'") {print $3; exit}}' Combined_gene_annotations.txt)
        echo -e "${gene}\t${result}\t${gene_length}\t${genome_name}"
}

export -f inner

for i in Sample_*_adtrim_clean_qtrim_fwd.fasta_vs_combined_genes.blastn.postblast.txt.top_hits.txt.QCd; do
	echo "Getting hit counts for $i"
	awk -F "\t" '{print $1}' Combined_gene_annotations.txt | parallel -j 30 inner $i {} > Prl_Read_counts_${i}
done

