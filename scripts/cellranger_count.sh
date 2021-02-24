#!/bin/bash 

cellranger=/n/scratch3/groups/hsph/hbc/pjb40/scratch/pkgs/cellranger-5.0.1/cellranger
#../../data/data_terra/fc-b478fcbd-0814-481e-a0fa-08d17d280b35/210117_SL-HXE_1143_AFCHFGJNCCX2/
$cellranger count   
--id=CTCL \
--fastqs=/n/data1/cores/bcbio/PIs/rachel_clark/Clark_snRNA_seq_skin_biopsies_hbc04139/scripts/CTCL/outs/fastq_path \
--sample=CTCL \
--transcriptome=n/scratch3/groups/hsph/hbc/pjb40/scratch/pkgs/refdata-gex-GRCh38-2020-A 
#--run=/n/data1/cores/bcbio/PIs/rachel_clark/data_terra/fc-b478fcbd-0814-481e-a0fa-08d17d280b35/210117_SL-HXE_1143_AFCHFGJNCCX2 \
#--csv=/n/data1/cores/bcbio/PIs/rachel_clark/Clark_snRNA_seq_skin_biopsies_hbc04139/meta/cellranger-tiny-bcl-simple-1.2.0.csv
 
