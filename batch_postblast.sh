for i in *.blastn; do
	echo "Running postblast for $i";
	perl postBlast.pl -b $i -p 95 -e 1e-5 -o ${i}.postblast.txt;
done
