#!/bin/bash
#SBATCH --ntasks=1
#SBATCH -t 24:00:00
#SBATCH -A YOUR_ACCOUNT
#SBATCH --mem-per-cpu=256G

# Print start time
echo "Job started at: $(date)"

# Name of the script
name="model_training1600_size512_filters256_layers4.py"
echo "Model is: $name"

# Load modules and environment
source activate dasanomaly

# Run the script
python "$name"

# Print end time
echo "Job ended at: $(date)"