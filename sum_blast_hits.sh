#This script will count the number of reads that mapped to the Paludibaculum 16S in each sample:

for a in `cat Databasefiles/Ref_list.txt`; do
	for i in `cat Sample_list_uniq.txt`; do
		sum=$(awk -v pat="$a" -F "\t" '{if($2 == pat) {print $0}}' ${i}*.blastn.postblast.QCd.top5.txt | wc -l)
		Total_reads=$(grep ">" ${i}*.fasta | wc -l)
		echo -e "${i}\t${a}\t${sum}\t${Total_reads}" >> Summed_16S_hits_by_organism.txt
	done
done
