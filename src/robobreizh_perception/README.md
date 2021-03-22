# robobreizh_perception

## Overview

Robobreizh's perception package. It performs object and person detections using mask-RCNN and OpenPose / YOLO.

It can detect:

* Bags (mask-RCNN)
* Chairs (mask-RCNN)
* People (mask-RCNN)
* A person's age/gender (Based on: https://github.com/spmallick/learnopencv/tree/master/AgeGender)
* Clothes (YOLO, Based on: https://github.com/simaiden/Clothing-Detection)

Chairs are further divided into two subgroups: taken and empty. 

## Prerequisites

This package is currently only working on Ubuntu 16.04 and on computer with a NVIDIA graphic card.

### 1. Install NVIDIA Driver (version 460)

This NVIDIA driver is required for the CUDA version we use (CUDA 11.2). The driver 460 is compatible with most of the RTX / GTX / TITAN architecture, if you have another GPU please check the compatibility and download the required driver at [Nvidia Driver Downloads](https://www.nvidia.com/Download/index.aspx?lang=en-us). Be careful if you are using a different driver that the 460 you should also check the compatibility with CUDA 11.2.
Execute the script and follow instruction to install the NVIDIA Driver 460:

``` install_nvidia_driver.sh ```

Then you need to reboot your computer to finish installation:

``` sudo reboot ```


### 2. Other Dependencies (CUDNN, CUDA, MaskRCNN and YOLO)

Install dependencies with install_ubuntu16.sh.

```buildoutcfg
bash install.sh
```

The installation script include for CUDNN, CUDA, mask-RCNN, yolo (darknet, used for clothing detection), weights, python 3.7 and python dependencies.

If you encountered problems with CUDNN or CUDA install you can foolow the official tutorials by NVIDIA:

More information on the [Nvidia CUDNN Documentation](https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html).
More information on the [Nvidia CUDA Documentation](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html).

The dependencies can also be installed individually with:

```buildoutcfg
cd dependencies/install/{NAME_OF_DEPENDENCY}
bash install.sh
```

### 3. OpenPose installation

Install OpenPose using the following tutorial:

[https://robinreni96.github.io/computervision/Python-Openpose-Installation/](https://robinreni96.github.io/computervision/Python-Openpose-Installation)

### 5. Configuration

Before launching the package you need to configure your path to darknet (Mask-RCNN) and OpenPose. You can do it by editing the cfg.yaml file from src directory. If you follow the regular install the draknet and openpose path should be:

 ```buildoutcfg
libdarknet_path:
  "HOME_path/darknet/libdarknet.so"

openpose_path:
  "HOME_path/openpose"
```

We recommand to also verify the paths in `src/utils/conf.py`, they should all correspond to a downloaded data file. 

## Start the server

In order to start the server, open a terminal in the robobreizh_perception directory and type:

```buildoutcfg
sudo python3 src/start_server.py
```

After a few seconds, the different weights will be loaded and the server will be ready to take requests.

## Test

Once the server has started, open a second a terminal and enter:

```buildoutcfg
python3 src/test.py
```

This will send an image to the server. 

The predictions will appear in the terminal and the image will be saved at data/demo.png.

## Structure

```buildoutcfg
|data: Contains the trained weights for yolo/openpose.
|dependencies: Scripts to install all the dependencies.
|src:
|---detection: yolo/openpose/mask-rcnn python implementations.
|---data: Store the images from tests.
|---utils: Utility files to read cfg.yaml and base64 conversions.
```

## FAQ

### The server can't find the weights.

The weights may not have been downloaded. 

```buildoutcfg
cd dependencies/install/data
bash install
```

If it hasn't worked, check whether the weights were correctly downloaded in data.
