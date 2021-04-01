RoboBreizh Simulation Workspace
==============

## Contents
1. [Git Usage](#1-git-usage)
2. [Environment](#2-environment)
3. [Installation](#3-installation)
4. [Usage](#4-usage)

## 1. Git Usage 

This repository is built upon differents submodules. The current architecture is:
- src
	- gazebo_environment: not a submodule, contains Gazebo simulation environments and Pepper simulated robot files.
	- robobreizh_navigation: Navigation submodule, can be clone independantly, see the [original repository](https://github.com/ROBOBREIZH/robobreizh_navigation).
	- robobreizh_dialog: Dialog submodule, can be clone independantly, see the [original repository](https://github.com/ROBOBREIZH/robobreizh_dialog).
	- robobreizh_perception: Perception submodule, can be clone independantly, see the [original repository](https://github.com/ROBOBREIZH/robobreizh_perception).

To clone the repository:
```buildoutcfg
sudo apt-get install git
git clone --recursive https://github.com/ROBOBREIZH/robobreizh_simu_ws.git
```

To be sure of getting all new commits from submodules, the first time you will clone this repository you need to update them:
```buildoutcfg
git submodule update --init --recursive
```

Then, each time you want you can pull any new commit from submodules using:
```buildoutcfg
git pull --recurse-submodules
```

If you want to pull only one submodule you can by using:
```buildoutcfg
git submodule update <specific path to submodule>
```

If you want to fetch new commits from one submodule
```buildoutcfg
cd src/submodule_name
git fetch
git checkout
```


## 2. Environment 
The code of this workspace works with Ubuntu 16.04 and ROS Kinetic. 
Some parts have been fork from others repositories:

### 3D Gazebo House Environment
[https://github.com/aws-robotics/aws-robomaker-small-house-world](https://github.com/aws-robotics/aws-robomaker-small-house-world)

### Pepper 3D Simulation
Modify URDF and Velocity Plugin

[https://github.com/uchile-robotics-forks/pepper_virtual/tree/feat-magiclab_pepper](https://github.com/uchile-robotics-forks/pepper_virtual/tree/feat-magiclab_pepper)

Control and Pepper Description packages

[https://github.com/awesomebytes/pepper_robot](https://github.com/awesomebytes/pepper_robot)

## 3. Installation

### 3.1. Simulation Environment and Navigation Package

To use this repository we assume that you have a working install of ROS Kinetic.
Follow the steps to install this workspace:
1. Install the right Git version (newest)

```buildoutcfg
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y
```

2. Clone this repository and submodules

```buildoutcfg
git clone --recursive https://github.com/ROBOBREIZH/robobreizh_simu_ws.git
git submodule update --init --recursive
```

3. Install the dependencies

```buildoutcfg
cd robobreizh_simu_ws
chmod +x ./install.sh && ./install.sh
```

4. Build the workspace

```buildoutcfg
catkin_make && source devel/setup.bash
```

### 3.2. Perception Package

#### 3.2.1. Install NVIDIA Cuda 11.2

This installation of Cuda is compatible with most of the RTX / GTX / TITAN architecture, if you have another GPU please check the compatibility and download the required version at [Nvidia CUDA Documentation](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html)..
Execute this script and follow instruction to install the NVIDIA Driver 11.2.

```buildoutcfg
cd src/robobreizh_perception
bash install_cuda.sh 
```

Then reboot your computer to finish installation.

```buildoutcfg
sudo reboot 
```

#### 3.2.2. Other Dependencies (CUDNN, MaskRCNN, YOLO and OpenPose)

Install dependencies with install.sh.

```buildoutcfg
cd src/robobreizh_perception
bash install.sh
```

The installation script include for CUDNN, mask-RCNN, YOLOv3 (darknet, used for clothing detection), weights, python 3.7 and python dependencies.

If you encountered problems with CUDNN install you can folow the official tutorials by NVIDIA:

More information on the [Nvidia CUDNN Documentation](https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html).

[OPTIONAL] The dependencies can also be installed individually with:

```buildoutcfg
cd dependencies/install/{NAME_OF_DEPENDENCY}
bash install.sh
```

## 4. Usage

### 4.1. Start the Gazebo Simulation
To launch the main environment for the RoboCup@Home 2021 execute the following command:

```buildoutcfg
source devel/setup.bash && roslaunch simulation robocup_env.launch
```

Another test environment can be launch as follow:

```buildoutcfg
roslaunch simulation test_env.launch
```

### 4.2. Mapping 
To perform mapping in one of the environment do (you should have the simulation running beforehand):

```buildoutcfg
source devel/setup.bash
roscd navigation
chmod +x ./mapping.sh && ./mapping.sh
```

You will be able to choose between 2 different mapping modes: the first one use a frontier-based autonomous exploration to map the environment and the second will launch a teleoperation tool for you to drive the robot around manually (using the keyboard).

#### Frontier-based Exploration: [package rrt_exploration](http://wiki.ros.org/rrt_exploration)

If you choose the option 1 for mapping you need to configure the frontier-based algorithm. First wait that all the windows (Rviz + 2 terminals) are launch and that you have "the map and global costmaps are received" message in the second terminal.
Then, in the Rviz window, you can publish 5 different points (using publish point tool): the 4 first ones will be for the size of the map that you want. The last one is the first goal for the robot and should be in the already mapped area (in white area in Rviz) while the others can be anywhere else.

!!! BE CAREFUL !!! You shouldd respect the following order for the points (left-top, left-bottom, right-bottom, right-top and goal) instead nothing will work:

![Order for the points](images/sequence_of_points.png)


### 4.3. Navigation

The navigation is performed through the [ROS Navigation Stack](http://wiki.ros.org/navigation). If you are using the robocup environment you can launch the navigation easily:

```buildoutcfg
source devel/setup.bash
roslaunch navigation navigation.launch
```

This will open Rviz and you can give goal orders to the robot using the 2D nav goal tool.

If you are using another environment you need to provide your map file (.yaml) as an argument:

```buildoutcfg
roslaunch navigation navigation.launch map_file:=path_to_my_map/my_map.yaml
```

Then when you'll see Rviz window you will need to define the initial position of the robot using the 2D pose estimate tool.

### 4.4. Perception

The Perception package is build as a server and is not yet implemented with ROS.

You should launch it in a seperate terminal as follow:

```buildoutcfg
cd src/robobreizh_perception/src
sudo python3.7 start_server.py
```

After a few seconds, the different weights will be loaded and the server will be ready to take requests.

Once the server has started, open a second a terminal and enter:

```buildoutcfg
python3.7 test.py
```

This will send two images (file table.png and waving-hand.jpg) to the server. 

The predictions will appear in the terminal and images will be saved at robobreizh_perception/src/demo.

For more information or debug please check the [Perception Package directory](src/robobreizh_perception/Readme.md#start-the-server)
