#!/bin/bash 
sed s/zoo//gI pandas.csv > "pandas_zootxt"
sort -t ',' -k2 pandas_zootxt > sorted_zoo | awk -F ',' 'NR==1 {print$1 $4 $2;next} {print$1 $4 $2}' sorted_zoo > sorted_pandastxt
awk -F ',' '{print $5}' pandas.csv | sort > panda_zoos_A2Z.txt
sed  's/\bmale\b/M/ig;s/\bfemale\b/F/ig' pandas.csv > pandas_m_f.txt
grep "female" pandas.csv | sort | grep "October" | wc -l
cat -n pandas_zootxt > pandas_names.txt | sed -n '1,6,17p' > lines_1_6_17.pandas_zootxt
grep -i "x" pandas_zootxt > x_lines.txt
awk -F ',' '{count[$5]++; line[$5]=$0} END {for (i in count) {if (count[i]==1) print line[i]}}' pandas_zootxt > unique_places.txt 
awk -F ',' '$4 <= 10' pandas.csv > young_pandas.txt | sort -nr
