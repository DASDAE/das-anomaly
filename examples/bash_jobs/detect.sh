#!/bin/bash
#SBATCH --ntasks=1
#SBATCH -t 24:00:00
#SBATCH -A YOUR_ACCOUNT
#SBATCH --mem-per-cpu=128G

# Print start time
echo "Job started at: $(date)"

# Load modules and environment
source activate dasanomaly

# Run the script
python << EOF
from das_anomaly.detect import AnomalyDetector, DetectConfig

cfg = DetectConfig()
AnomalyDetector(cfg).run()
EOF

# Print end time
echo "Job ended at: $(date)"
