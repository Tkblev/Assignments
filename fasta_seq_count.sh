#1/bin/bash
echo "this script can count the number of sequences in a fasta file"
greeting="Hiya" 
myname="Torrey Blevins" 
echo "$greeting" "$myname"
mkdir /home/tkblevins/Desktop/bioinformatics
mkdir /home/tkblevins/Desktop/bioinformatics/learning_bash
mv /home/tkblevins/Desktop/transcriptome1.fasta /home/tkblevins/Desktop/bioinformatics/learning_bash
grep -c ">" ~/Desktop/bioinformatics/learning_bash/transcriptome1.fasta >"fasta_count.txt"

