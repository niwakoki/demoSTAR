#!/bin/bash
ulimit -n 4096

star="./macOS/STAR"
# star="~/linuxOS/STAR"

myGenomeDir="./data/genome/"
myGenomeFastaFiles="./data/genome/chr21.hg37.fa"
mySjdbGTFfile="./data/genome/chr21.hg37.gtf"
myFileNamePrefix="./data/result/result."

${star} \
 --runThreadN 12 \
 --genomeSAindexNbases 11 \
 --runMode genomeGenerate \
 --genomeDir ${myGenomeDir} \
 --genomeFastaFiles ${myGenomeFastaFiles} \
 --sjdbGTFfile ${mySjdbGTFfile} \
 --sjdbOverhang 100 
