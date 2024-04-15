#!/bin/bash 
makeblastdb -in  mystery_transcripts.fasta -dbtype nucl -out ~/Desktop/bioinformatics/BLAST 
#1 above
makeblastdb -in  mystery_proteins.fasta -dbtype prot -out ~/Desktop/bioinformatics/BLAST
#2 above
blastn -db BLAST -query mystery_nucleotide_query.fasta -evalue 1e-3 -max_target_seqs 5 -outfmt 7 -out A4blast.out
#3 above
#4 Coffea arabica catalase isozyme 3-like (LOC113711792), transcript variant X2, misc_RNA was the most common hit across all 3 IDs.  Cofea eugeniodes catalys was also relatively high on a couple of them but not as consistantly.
awk '$3 >= 90 { print $2 }' A4blast.out > most_similar.txt
#5 prints sequence names with ID over 90% match for query ABOVE
blastp -db Blastprot -query mystery_protein_query.fasta -evalue 1e-5 -max_target_seqs 15 -outfmt 7 -out A4blastprot.out
#6 above
#7 3 of the hits came back very general as "catalase like" with catalase isozyme 3-like [Coffea arabica] as a lesser confident ID. the others came back with catalase isozyme 1 [Coffea arabica] orcatalase isozyme 1-like [Coffea arabica] with 100% match
#8 -Coffee plant Cofea arabica  (there were some cofea eugeniodes hits but arabica was more consistent)
#9 - Coffe plant Cofea arabica 
#10 - Coffea arabica Catalase isozyme - probably 1 based on the higher confidence in the protein results. The nucleotide results produced "isozyme 3-like" IDs while some of the protein matches were 100% matches with Isozyme 1