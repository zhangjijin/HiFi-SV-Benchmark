for i in pbmm ngmlr 
do
pbsv discover ${i}.bam ${i}-pbsv.svsig.gz && pbsv call ref.fa ${i}-pbsv.svsig.gz ${i}-pbsv.vcf --ccs 2> ${i}-pbsv.log 
done
