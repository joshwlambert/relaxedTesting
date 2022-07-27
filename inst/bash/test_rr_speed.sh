#!/bin/bash
#SBATCH --time=23:59:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=test_rr_speed
#SBATCH --output=logs/test_rr_speed.log
#SBATCH --mem=5GB
#SBATCH --partition=gelifes

ml R
Rscript inst/scripts/test_rr_speed.R
