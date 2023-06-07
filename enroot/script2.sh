#!/bin/bash
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=0
# SBATCH --gres=gpu:1			# request 1 GPU, you can also use --gpus=1
#SBATCH --gres=gpu:3g.40gb:1		
#SBATCH --job-name "script2"
#SBATCH --output=log-%x.%N.%J.out
#SBATCH --error=log-%x.%N.%J.err

# load module
# module load

# And finally run the jobs
srun --container-image=/raid/squashfs/nvidia+tensorflow+22.12-tf2-py3.sqsh --container-name=tensorflow \
   --container-workdir=/home/user02/cluster-demo/enroot \
   python train_c2f.py
