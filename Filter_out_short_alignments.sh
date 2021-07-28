for i in Sample_*_adtrim_clean_qtrim_fwd.fasta_vs_combined_genes.blastn.postblast.txt.top_hits.txt; do
        awk -F "\t" '{if($15 >= 80) {print $0} else if($9 == 1 || $10 == 1 || $9 == $14 || $10 == $14) {print $0}}' $i >> ${i}.QCd
done
