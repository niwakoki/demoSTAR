#!/bin/bash
ulimit -n 4096

# star="./macOS/STAR"
star="~/linuxOS/STAR"

myGenomeDir="./data/genome/"
myGenomeFastaFiles="./data/genome/chr21.hg37.fa"
mySjdbGTFfile="./data/genome/chr21.hg37.gtf"
myFastqFile1="./data/RNAseq/demo.chr21.1.fastq.gz"
myFastqFile2="./data/RNAseq/demo.chr21.2.fastq.gz"
myFileNamePrefix="./data/result/result."

${star} \
 --runThreadN 12 \
 --genomeSAindexNbases 11 \
 --genomeDir ${myGenomeDir} \
 --genomeFastaFiles ${myGenomeFastaFiles} \
 --sjdbGTFfile ${mySjdbGTFfile} \
 --sjdbOverhang 100 \
 --readFilesIn ${myFastqFile1} ${myFastqFile2} \
 --readFilesCommand gunzip -c \
 --outFileNamePrefix ${myFileNamePrefix} \
 --outSAMtype BAM SortedByCoordinate
