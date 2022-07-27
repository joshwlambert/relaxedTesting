#!/bin/bash
#SBATCH --time=23:59:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=install
#SBATCH --output=install.log
#SBATCH --mem=5GB
#SBATCH --partition=gelifes

mkdir -p logs
ml R
Rscript -e 'remotes::install_github("joshwlambert/relaxedTesting")'
