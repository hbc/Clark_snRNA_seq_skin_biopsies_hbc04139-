#!/bin/bash
#SBATCH --partition=medium        # Partition (queue) priority
#SBATCH --time=12:00:00              # Runtime in D-HH:MM format, 10:00:00 for hours
#SBATCH --job-name=cellranger          # Job name
#SBATCH -c 15			    # cores
#SBATCH --mem-per-cpu=10G           # Memory needed per CPU or --mem-per-cpu
#SBATCH --output=clark_snRNA_%j.out     # File to which STDOUT will be written, including job ID
#SBATCH --error=clark_snRNA_%j.err      # File to which STDERR will be written, including job ID
#SBATCH --mail-type=ALL             # Type of email notification (BEGIN, END, FAIL, ALL)
