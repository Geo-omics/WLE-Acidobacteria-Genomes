for i in *.postblast.txt; do
	echo "Getting top hits for $i";
	perl top5.pl -b $i -t 1 -o ${i}.top_hits.txt;
done
