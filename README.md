# Gut Microbiota and Clinical Manifestations in Thai Pediatric Patients with Attention Deficit Hyperactivity Disorder

This project investigates the gut microbiota of Thai pediatric patients with Attention Deficit Hyperactivity Disorder (ADHD) and its clinical manifestations.
The workflow for microbiome analysis includes several key steps, outlined below.

## Workflow for Microbiome Analysis

### 1. Sequence Quality Control (QC)

Quality control (QC) is the first step to ensure that the sequences obtained from the sequencing platform are of high quality. In this step, all input files were assessed their quality using Fastqc and Multiqc.

### 2. Amplicon Sequence Variant (ASV) Construction by DADA2

DADA2 is used for constructing ASVs from the quality-controlled sequences. This method provides high resolution by identifying single-nucleotide differences.
Steps involved:
- Learning error rates
- Dereplication of sequences
- Identifying ASVs
- Removing chimeras

### 3. Taxonomic Classification

Taxonomic classification assigns taxonomy to the ASVs generated by DADA2. This step is crucial for understanding the composition of the microbiota. The database used in this study is Silva database (version 132).

### 4. Diversity Analysis

Diversity analysis helps in understanding the microbial diversity within samples (alpha diversity) and between samples (beta diversity).

- **Alpha diversity**: Measures include Observed OTUs, Shannon diversity index, and Chao1.
- **Beta diversity**: Measures dissimilarity matrix includes Bray-Curtis, Jaccard, Weighted UniFrac, and Unweighted UniFrac.

### 5. Functional Prediction by PICRUSt2

PICRUSt2 (Phylogenetic Investigation of Communities by Reconstruction of Unobserved States) is used for predicting the functional potential of the microbial communities from 16S rRNA gene sequences.

Steps involved:
- Normalizing the ASV table
- Predicting gene families
- Inferring functional pathways

###