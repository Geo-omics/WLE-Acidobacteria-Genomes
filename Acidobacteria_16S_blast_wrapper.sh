#This will blast the illumina amplicon reads in all samples against the Paludibaculum 16S rRNA gene

for i in *.fasta; do
	blastn -query $i -db Databasefiles/WLE_Acidobacteria_16S.fasta -out ${i}_vs_WLE_Acidobacteria_16S.blastn -outfmt "7 std qlen slen qcovs"
done

#This next part will filter out all the hits with e-value less than 1e-5 and 97% identity:

for i in *_vs_WLE_Acidobacteria_16S.blastn; do
	perl /geomicro/data1/COMMON/scripts/BlastTools/postBlast.pl -b $i -e 1e-5 -p 97 -o $i.postblast
done
