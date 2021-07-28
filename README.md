# WLE-Acidobacteria-Genomes
This repository holds all code and scripts used during the analysis of Acidobacteria MAGs assembled from western Lake Erie Microcystis Blooms

Explanation of Files:
Acidobacteria_Genome_Analysis2.Rmd contains all of the bash and R code used during the analysis of two western Lake Erie Acidobacteria MAGs (MAGs CoA2 C42 and CoA8 C33). The assembly and binning of the MAG collection from which these MAGs were derived is descrbied here: https://github.com/Geo-omics/Heterotrophic-Bacteria-Dominate-Catalase-Expression-During-Microcystis-Blooms

gANI_results.csv contains the results of dRep genome compare with published Acidobacteria genomes.

Acidobacteria_16S_rRNA.fasta contains the near full-length 16S rRNA sequences used to build the RAXML trees.

Acidobacteria_RP_L18.faa contains predicted amino acid sequences of Ribosoaml Protein L18 from Acidobacteria MAGs available in IMG.

The Acidobacteria_Genomes folder contains the whole genome fasta files of the genomes used in dRep compare gANI measurements.

Paludibaculum_CoA2_C42.genes.simple_headers.fna contains the IMG predicted gene sequences from MAG CoA2_C42 to which metatranscriptomic reads were mapped.

Bryobacter_CoA8_C33.fna contains the IMG predicted gene sequences from MAG CoA8_C33 to which metatranscriptomic reads were mapped.

Microcystis_all.genes.fna contains all predicted gene sequences from Microcystis reference genomes obtained from IMG and NCBI. The included strains are Microcystis strain FD4, strain NIES 843, strain NIES 2481, strain NIES 2549, strain PCC7806SL.

Blast_metaT_vs_Acido_Microcystis_combined_genes.sh contains a custom shell script used to map metatranscriptomic reads to predicted gene calls in the Acidobacteria MAGs and Microcystis references.

batch_postblast.sh contains a custom shell script used to filter metatranscriptomic read alignments that do not pass minimum thresholds of percent identity and e-value.
