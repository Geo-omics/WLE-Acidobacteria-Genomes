# WLE-Acidobacteria-Genomes
This repository holds all code and scripts used during the analysis of Acidobacteria MAGs assembled from western Lake Erie Microcystis Blooms

Required software:
NCBI Blast v. 2.2.31+
R and RMarkdown
dRep v2.0.5
Clustal Omega v. 1.2.1 
RAxML v. 8.2.4 

Explanation of Files:
Acidobacteria_Genome_Analysis2.Rmd contains all of the bash and R code used during the analysis of two western Lake Erie Acidobacteria MAGs (MAGs CoA2 C42 and CoA8 C33). The assembly and binning of the MAG collection from which these MAGs were derived is descrbied here: https://github.com/Geo-omics/Heterotrophic-Bacteria-Dominate-Catalase-Expression-During-Microcystis-Blooms

gANI_results.csv contains the results of dRep genome compare with published Acidobacteria genomes.

Acidobacteria_16S_rRNA.fasta contains the near full-length 16S rRNA sequences used to build the RAXML trees.

Acidobacteria_RP_L18.faa contains predicted amino acid sequences of Ribosoaml Protein L18 from Acidobacteria MAGs available in IMG.

The Acidobacteria_Genomes folder contains the whole genome fasta files of the genomes used in dRep compare gANI measurements.

Paludibaculum_CoA2_C42.genes.simple_headers.fna contains the IMG predicted gene sequences from MAG CoA2_C42 to which metatranscriptomic reads were mapped.
Paludibaculum_CoA2_C42_simple_headers.genes.faa contains the IMG predicted amino acid sequences for each predicted gene in MAG CoA2_C42.

Bryobacter_CoA8_C33.fna contains the IMG predicted gene sequences from MAG CoA8_C33 to which metatranscriptomic reads were mapped.
Bryobacter_CoA8_C33_genes_simple_headers.faa contains the IMG predicted amino acid sequences for each predicted gene in MAG CoA8_C33.

Microcystis_all.genes.fna contains all predicted gene sequences from Microcystis reference genomes obtained from IMG and NCBI. The included strains are Microcystis strain FD4, strain NIES 843, strain NIES 2481, strain NIES 2549, strain PCC7806SL.

Blast_metaT_vs_Acido_Microcystis_combined_genes.sh contains a custom shell script used to map metatranscriptomic reads to predicted gene calls in the Acidobacteria MAGs and Microcystis references.

batch_postblast.sh contains a custom shell script used to filter metatranscriptomic read alignments that do not pass minimum thresholds of percent identity and e-value.

batch_top5.sh contains a custom shell script used to dereplicate read alignments (count each read once).

Filter_out_short_alignments.sh removes read alignments with low query coverage in the center of genes.

The following files contain IMG or NCBI gene annotation data:
Bryobacter_CoA8_C33_annotations.txt  
Paludibaculum_CoA2_C42_annotations.txt  
Microcystis_NIES_2481_annotations.txt  
Microcystis_NIES_2549_annotations.txt  
Microcystis_PCC_7806SL_annotations.txt  
Microcystis_NIES_843_annotations.txt  
Microcystis_FD4_annotations.txt  

get_read_counts_combined_genes.sh and get_read_counts_combined_genes_parallelized.sh tallies read counts for each gene. The parallelized script was used in final analysis.

The output of the get_read_counts_combined_genes_parallelized.sh are the Prl_Read_counts_*.txt.QCd files.

Paludibaculum_transporters.txt contains the TransportDB 2.0 annotations for MAG CoA2_C42

Bryobacter_transporters.txt contains the TransportDB 2.0 annotations for MAG CoA8_C33

Crocosphaera_Synechococcus_B12_genes.faa contain amino acid sequences of predicted vitmain B12 production genes in cultures that are confirmed B12 producers.

Microcystis_PCC_7806SL.genes.faa contains amino acid sequences for all predicted Microcystis strain 7806SL genes.

P_denitrificans_glycolate_util_genes.faa includes published amino acid sequences for novel proteins that allow glycolate use.

sra_explorer_curl_wrapper, sra_explorer_fastq_download.sh, and Lakes_Champlain_Mendota_sra_explorer_fastq_download.sh were used to download Public Amplicon Sequence data from freshwater lakes.

iu-filter-quality-minoche.sh quality screens and trims downloaded amplicon sequence data.

sra_explorer_iu_gen_configs_input.txt contains information on how samples are paired for QC.

batch_bbduk.sh was used to QC single-end sequencing datasets downloaded from NCBI.

Acidobacteria_16S_blast_wrapper.sh and Cyanobacteria_16S_blast_wrapper.sh were used to map variable regions of amplicon reads to reference sequences.

The Databasefiles folder contains the 16S rRNA gene references used to recruite variable region amplicon reads.

sum_blast_hits.sh tallies the Amplicon reads mapped to 16S references.
