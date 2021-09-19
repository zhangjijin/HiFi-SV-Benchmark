for i in pbmm ngmlr minimap2
do
sniffles -m ${i}.bam -v ${i}-sniffles.vcf -t 20 -s 1 --ccs_reads 2> ${i}-sniffles.log 
done
