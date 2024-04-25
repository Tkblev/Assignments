#!/bin/bash 

sed 's/zoo//gi' pandas.csv > "pandas_zoo.txt"
#1
sort -t ',' -k2 pandas_zootxt > sorted_zoo 
awk -F ',' 'NR==1 {print$1 $4 $2;next} {print$1 $4 $2}' sorted_zoo > sorted_pandastxt 
#2
awk -F ',' '{print $5}' pandas.csv | sort > panda_zoos_A2Z.txt 
#3
sed  's/\bmale\b/M/ig;s/\bfemale\b/F/ig' pandas.csv > pandas_m_f.txt 
#4
grep "female" pandas.csv | sort | grep "October" | wc -l 
#5
cat -n pandas_zootxt > pandas_names.txt 
#6
sed -n '1,6,17p' > lines_1_6_17.pandas_zootxt 
#7
grep -i "x" pandas_zootxt > x_lines.txt 
#8
awk -F ',' '{count[$5]++; line[$5]=$0} END {for (i in count) {if (count[i]==1) print line[i]}}' pandas_zootxt > unique_places.txt  
#9
awk -F ',' '{print $4 <= 10}' pandas.csv > young_pandas.txt | sort -nr 
#10
