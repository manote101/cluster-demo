## Traing MNIST model in Tensorflow

`
`
`cd cluster-demo/deployments/flask/test`

`srun --container-image=/raid/squashfs/nvidia+tensorflow+22.12-tf2-py3.sqsh --container-name=tensorflow --container-workdir=$(pwd) --gpus=1 python train.py`

### Test prediction

`srun --container-image=/raid/squashfs/nvidia+tensorflow+22.12-tf2-py3.sqsh --container-name=tensorflow --container-workdir=$(pwd) --gres=gpu:1g.10gb:1 python new_load.py eight.png`



## App Deployment

### Build Docker image
`cd cluster-demo/deployments/flask`
`docker build -t flask_app . `
`docker images`


### Start Docker container

```Shell
# $PORT is listening port of gunicorn, -p 8910:8900 will expose container port 8900 to host port 8910
docker run --gpus '"device=0:1"' -e "PORT=8900" -it --rm -p 8910:8900 flask_app
```

### Test prediction by sending file with curl command 

`curl -F "file=@test/three.png" http://<dgx-ip-address>:8910/`

