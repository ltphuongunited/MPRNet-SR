import os
import random

import numpy as np
import torch

from prettytable import PrettyTable


# function to get the current available device (CPU, GPU or TPU)
def get_device() -> torch.device:
    """
    Get the current machine device to use

    :returns: the current machine device
    """

    # use CUDA device or CPU accordingly to the one available
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

    # if the device is a GPU
    if torch.cuda.is_available():
        # print the details of the given GPU
        stream = os.popen('nvidia-smi')
        output = stream.read()
        print(output)

    print(f">>> Using {device} device")

    return device


def set_seeds(seed: int = 1507) -> None:
    """
    Method to set the seeds of random components to allow reproducibility

    :param seed: the seed to use, default is 1507 (int)

    :return: the testing environment wrapped with the reproducibility wrapper initialized with the given seed (gym.Env)
    """

    # set random seed
    random.seed(seed)

    # set numpy random seed
    np.random.seed(seed)

    # set pytorch random seed
    torch.manual_seed(seed)
    torch.cuda.manual_seed(seed)
    torch.backends.cudnn.benchmark = False
    torch.backends.cudnn.deterministic = True
    torch.use_deterministic_algorithms(True)
    os.environ["CUBLAS_WORKSPACE_CONFIG"] = ":4096:8"


def rename() -> None:
    dir = os.getcwd() + "/validation/lr/unknown/x2/"

    for filename in sorted(os.listdir(dir)):
        name = os.path.splitext(filename)[0]
        ext = os.path.splitext(filename)[1]
        name = name[0:4]

        new_name = dir + name + ext
        old_name = dir + filename

        os.rename(old_name, new_name)


def count_parameters(model):
    table = PrettyTable(["Modules", "Parameters"])
    total_params = 0
    for name, parameter in model.named_parameters():
        if not parameter.requires_grad: continue
        params = parameter.numel()
        table.add_row([name, params])
        total_params += params
    print(table)
    print(f"Total Trainable Params: {total_params}")
    return total_params
