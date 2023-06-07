#!/bin/bash
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=0
#SBATCH --gres=gpu:1			# request 1 GPU, you can also use --gpus=1
#SBATCH --job-name "script1"
#SBATCH --output=log-%x.%N.%J.out
#SBATCH --error=log-%x.%N.%J.err

# load module
# module load

# And finally run the jobs
enroot start  \
   tensorflow bash -c "cd /home/user02/cluster-demo/enroot && python train_c2f.py"
