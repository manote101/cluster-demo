import torch

if torch.cuda.is_available():
    print("GPU is available!")
else:
    print("No GPU found.")

num_gpus = torch.cuda.device_count()
print("Number of available GPUs:", num_gpus)
