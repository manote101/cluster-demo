## How to run

```Shell
srun enroot list  	# this can run from both headnode and DGX node
enroot list 		# You can run from DGX node only
```

## Method#1: run with srun
```Shell
cd cluster-demo/pytorch
srun --container-image=/dataset/squashfs/nvidia+pytorch+23.01-py3.sqsh --container-name=pytorch --container-workdir=$(pwd) --gpus=1 python simple-pt.py
```
```Shell
srun enroot list
srun --gpus=1 enroot start pyxis_pytorch nvidia-smi
```

## Method#2: run with sbatch
```Shell
sbatch simple-pt.sub
```

## Demo MNIST trainig in PyTorch
```Shell
git clone https://github.com/ChawDoe/LeNet5-MNIST-PyTorch.git

cd LeNet5-MNIST-PyTorch
srun --container-image=/dataset/squashfs/nvidia+pytorch+23.01-py3.sqsh --container-name=pytorch --container-workdir=$(pwd) --gpus=1 python train.py
```
