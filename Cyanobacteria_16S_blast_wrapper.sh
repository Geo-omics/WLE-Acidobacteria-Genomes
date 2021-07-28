#This will blast the illumina amplicon reads in all samples against the cyanobacteria 16S rRNA genes

for i in *.fasta; do
	blastn -query $i -db Databasefiles/Anabaena_silva.fasta -out ${i}_vs_Anabaena_16S.blastn -outfmt "7 std qlen slen qcovs"
done

for i in *.fasta; do
        blastn -query $i -db Databasefiles/Microcystis_silva.fasta -out ${i}_vs_Microcystis_16S.blastn -outfmt "7 std qlen slen qcovs"
done

for i in *.fasta; do
        blastn -query $i -db Databasefiles/Synechococcus_silva.fasta -out ${i}_vs_Synechococcus_16S.blastn -outfmt "7 std qlen slen qcovs"
done

#This next part will filter out all the hits with e-value less than 1e-5 and 97% identity:

for i in *.blastn; do
	perl /geomicro/data1/COMMON/scripts/BlastTools/postBlast.pl -b $i -e 1e-5 -p 97 -o $i.postblast
done
