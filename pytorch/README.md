## How to run

```Shell
enroot list
```
```Shell
srun --container-image=/raid/squashfs/nvidia+pytorch+23.01-py3.sqsh --container-name=pytorch --container-workdir=$(pwd) --gpus=1 python simple-pt.py
```
```Shell
enroot list
```
## Demo MNIST via PyTorch
git clone https://github.com/ChawDoe/LeNet5-MNIST-PyTorch.git

cd LeNet5-MNIST-PyTorch
srun --container-image=/raid/squashfs/nvidia+pytorch+23.01-py3.sqsh --container-name=pytorch --container-workdir=$(pwd) --gpus=1 python train.py
