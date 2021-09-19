# HiFi SV Benchmark
A benchmark pipeline for PacBio HiFi whole genome sequencing structural variant analysis.
# Dependencies
## Reads aligner
* [ngmlr](https://github.com/philres/ngmlr)  
* [minimap2](https://github.com/lh3/minimap2)  
* [pbmm2](https://github.com/PacificBiosciences/pbmm2)  
## SV caller
* [svim](https://github.com/eldariont/svim)  
* [cuteSV](https://github.com/tjiangHIT/cuteSV)  
* [Sniffles](https://github.com/fritzsedlazeck/Sniffles)  
* [pbsv](https://github.com/PacificBiosciences/pbsv)
## Other tools
* [SURVIVOR](https://github.com/fritzsedlazeck/SURVIVOR)  
* [Samtools](https://github.com/samtools/samtools)  
* [snakemake](https://github.com/snakemake/snakemake)  
* [canu](https://github.com/marbl/canu)  
* [Mummer](https://github.com/mummer4/mummer)
* [paragraph](https://github.com/Illumina/paragraph)
* [bedtools](https://github.com/arq5x/bedtools2)
* [bam2fastx](https://github.com/PacificBiosciences/bam2fastx)

All of the above software can be installed via ```conda```
# Pacbio HiFi mapping to reference genome
```
snakemake -s the/path/to/mapping.smk
```

