for i in *.fasta_vs_combined_genes.blastn.postblast.txt.top_hits.txt.QCd; do
	echo "Getting hit counts for $i"
	for gene in `awk -F "\t" '{print $1}' Combined_gene_annotations.txt`; do
		result=$(awk -F "\t" '{if($2 == "'$gene'") {print $0}}' $i | wc -l)
		gene_length=$(awk -F "\t" '{if($2 == "'$gene'") {print $14; exit}}' $i)
		genome_name=$(awk -F "\t" '{if($1 == "'$gene'") {print $3; exit}}' Combined_gene_annotations.txt)
		echo -e "${gene}\t${result}\t${gene_length}\t${genome_name}" >> Read_counts_${i}
	done
done

