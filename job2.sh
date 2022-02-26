#!/bin/bash
#SBATCH --job-name=lafandEnIg20
#SBATCH --gres=gpu:48gb:1
#SBATCH --cpus-per-gpu=32
#SBATCH --mem=180G          
#SBATCH --time=72:00:00         
#SBATCH --partition=long
#SBATCH --error=/home/mila/c/chris.emezue/lafand-mt/slurmerror_lafandEnIg20.txt
#SBATCH --output=/home/mila/c/chris.emezue/lafand-mt/slurmoutput_lafandEnIg20.txt


###########cluster information above this line
module load python/3.7
source /home/mila/c/chris.emezue/env/bin/activate
cd /home/mila/c/chris.emezue/lafand-mt/joeytrainer
bash train-en-ig-20.sh
