RoboBreizh Simulation Workspace
==============

## Environment 
The code of this workspace works with Ubuntu 16.04 and ROS Kinetic. 
Some parts have been fork from others repositories:

### 3D Gazebo House Environment
[https://github.com/aws-robotics/aws-robomaker-small-house-world](https://github.com/aws-robotics/aws-robomaker-small-house-world)

### Pepper 3D Simulation
Modify URDF and Velocity Plugin

[https://github.com/uchile-robotics-forks/pepper_virtual/tree/feat-magiclab_pepper](https://github.com/uchile-robotics-forks/pepper_virtual/tree/feat-magiclab_pepper)

Control and Pepper Description packages

[https://github.com/awesomebytes/pepper_robot](https://github.com/awesomebytes/pepper_robot)

## Installation
To use this repository we assume that you have a working install of ROS Kinetic.
Follow the steps to install this workspace:
1. Clone the repository 

- `git clone https://github.com/ROBOBREIZH/robobreizh_simu_ws.git`

2. Install the dependencies

- `cd robobreizh_simu_ws`

- `chmod +x ./install.sh && ./install.sh`

3. Build the workspace

- `catkin_make && source devel/setup.bash`
