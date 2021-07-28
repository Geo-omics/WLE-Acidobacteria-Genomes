for i in *_adtrim_clean_qtrim_fwd.fasta; do
	echo "Running Blast for $i";
	blastn -query $i -db Bryobacter_Paludibaculum_Microcystis.combined_genes.fna -outfmt "7 std qlen slen qcovs" -out ${i}_vs_combined_genes.blastn;
done
