#!/bin/bash
#SBATCH -N 1
#SBATCH -p GPU-shared
#SBATCH -t 24:00:00
#SBATCH --gpus=v100-32:4
#SBATCH --output=hw3_%j.log
#SBATCH --error=hw3_%j.err.log

# setup env
module load cuda/12.6.1
conda activate 11968-hw3
nvidia-smi

# run training script
cd /jet/home/kmaki/HW3/llmsys_f25_hw3
python project/run_machine_translation.py
