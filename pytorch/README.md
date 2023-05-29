## How to run

```Shell
enroot list
```
```Shell
srun --container-image=/dataset/squashfs/nvidia+pytorch+23.01-py3.sqsh --container-name=pytorch --container-workdir=$(pwd) --gpus=1 python simple-pt.py
```
```Shell
enroot list
```
