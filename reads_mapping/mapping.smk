# The script contains * proxy paths
Samples = [160，64，219] #160,219,64 are prefixes to the names of the three samples in this test
rule all:
	input:
	expand("{sample}/ref.mmi",sample=Samples),
        expand("{sample}/pbmm2.bam",sample=Samples),
        expand("{sample}/pbmm.log",sample=Samples),
        expand("{sample}/pbmm.time",sample=Samples),
        expand("{sample}/ngmlr.sam",sample=Samples),
        expand("{sample}/ngmlr.log",sample=Samples),
        expand("{sample}/ngmlr.time",sample=Samples),
        expand("{sample}/minimap2.sam",sample=Samples),
        expand("{sample}/minimap2.log",sample=Samples),
        expand("{sample}/minimap2.time",sample=Samples)


rule pbmmindex:
    input:
        "{sample}/ref.fa"
    output:
        "{sample}/ref.mmi"
    shell:
        " pbmm2 index {input} {output}  --preset CCS "

rule pbmm_map:
    input:
        fa="{sample}/ref.mmi",
        fq="*/{sample}.fastq"
    output:
        bam="{sample}/pbmm2.bam",
        log="{sample}/pbmm.log",
        time="{sample}/pbmm.time"
    shell:
        " sh pbmmalign.sh {input.fa} {input.fq} {output.bam} {output.log} > {output.time}"

rule ngmlr_map:
    input:
        fa="{sample}/ref.fa",
        fq="*/{sample}.fastq"
    output:
        bam="{sample}/ngmlr.sam",
        log="{sample}/ngmlr.log",
        log2="{sample}/ngmlr.time"
    shell:
        "  sh ngmlralign.sh {input.fa} {input.fq} {output.bam} {output.log} > {output.log2} "

/data1/home/zhiliang/miniconda3/bin/ngmlr  -t 20 -r fa -q fq -o bam   2>log
rule minimp2_map:
    input:
        fa="{sample}/ref.fa",
        fq="*/{sample}.fastq"
    output:
        bam="{sample}/minimap2.sam",
        log="{sample}/minimap2.log",
        log2="{sample}/minimap2.time"
    shell:
        "  sh minimapalign.sh {input.fa} {input.fq} {output.bam} {output.log}  > {output.log2} "
