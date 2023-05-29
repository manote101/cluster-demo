# How to run Tensorflow with SLURM/Pyxis

```Shell
srun --container-image=/dataset/squashfs/nvidia+tensorflow+22.12-tf2-py3.sqsh \
--container-name=tensorflow --container-workdir=$(pwd) \
--gpus=1 python -c 'import tensorflow as tf; print(tf.__version__)'
```

```Shell

```
