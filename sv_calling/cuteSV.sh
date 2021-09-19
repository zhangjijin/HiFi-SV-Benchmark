for i in pbmm ngmlr minimap2
do
mkdir ${i}-cuteSV && cuteSV ${i}.bam ref.fa ${i}-cuteSV.vcf ${i}-cuteSV --max_cluster_bias_INS 1000 --diff_ratio_merging_INS 0.9 --max_cluster_bias_DEL 1000 --diff_ratio_merging_DEL 0.5 2>${i}-cuteSV.log
done
