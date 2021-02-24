#!/bin/bash
#SBATCH --partition=medium        # Partition (queue) priority
#SBATCH --time=1-12:00:00              # Runtime in D-HH:MM format, 10:00:00 for hours
#SBATCH --job-name=cellranger          # Job name
#SBATCH -c 5			    # cores
#SBATCH --mem-per-cpu=50G           # Memory needed per CPU or --mem-per-cpu
#SBATCH --output=clark_snRNA_%j.out     # File to which STDOUT will be written, including job ID
#SBATCH --error=clark_snRNA_%j.err      # File to which STDERR will be written, including job ID
#SBATCH --mail-type=ALL             # Type of email notification (BEGIN, END, FAIL, ALL)

cellranger=/n/scratch3/groups/hsph/hbc/pjb40/scratch/pkgs/cellranger-5.0.1/cellranger
$cellranger count --id=CTCL_snRNA \
--fastqs=/n/data1/cores/bcbio/PIs/rachel_clark/Clark_snRNA_seq_skin_biopsies_hbc04139/scripts/CTCL/outs/fastq_path \
--sample=CTCL_skin \
--transcriptome=/n/scratch3/groups/hsph/hbc/pjb40/scratch/pkgs/refdata-gex-GRCh38-2020-A 
#--run=/n/data1/cores/bcbio/PIs/rachel_clark/data_terra/fc-b478fcbd-0814-481e-a0fa-08d17d280b35/210117_SL-HXE_1143_AFCHFGJNCCX2 \
#--csv=/n/data1/cores/bcbio/PIs/rachel_clark/Clark_snRNA_seq_skin_biopsies_hbc04139/meta/cellranger-tiny-bcl-simple-1.2.0.csv
 
