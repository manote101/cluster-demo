# How to run Tensorflow with SLURM/Pyxis

`cd ~/cluster-demo/enroot/tensorflow`

## List Tensorflow version
```Shell
srun --container-image=/dataset/squashfs/nvidia+tensorflow+22.12-tf2-py3.sqsh \
--container-name=tensorflow --container-workdir=$(pwd) \
--gpus=1 python -c 'import tensorflow as tf; print(tf.__version__)'
```

# Train model for Celsius to Farenheit conversion
```Shell
srun --container-image=/dataset/squashfs/nvidia+tensorflow+22.12-tf2-py3.sqsh \
--container-name=tensorflow --container-workdir=$(pwd) \
--gpus=1 python train_c2f.py
```
# Demo: train MNIST dataset, you can run with sbatch or srun
```Shell
sbatch train_mnist.sub

# or 
srun --container-image=/dataset/squashfs/nvidia+tensorflow+22.12-tf2-py3.sqsh \
--container-name=tensorflow --container-workdir=$(pwd) \
--gpus=1 python train_mnist.py
```
