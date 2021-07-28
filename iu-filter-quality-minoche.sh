for i in *.ini; do
	iu-filter-quality-minoche --ignore-deflines $i
done
