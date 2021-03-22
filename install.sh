#ROS Install
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full -y

#ROS Pepper Dependencies
sudo apt-get install ros-kinetic-pepper-meshes -y

#ROS environment setup
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential -y
sudo apt-get install python-rosdep -y
sudo rosdep init
rosdep update

#Gazebo Install
sudo apt-get install ros-kinetic-ddynamic-reconfigure-python -y
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
cat /etc/apt/sources.list.d/gazebo-stable.list
wget https://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install gazebo7 -y
sudo apt-get install libignition-math2-dev -y
sudo apt-get install ros-kinetic-tf2-sensor-msgs ros-kinetic-ros-control ros-kinetic-ros-controllers ros-kinetic-gazebo-ros-control ros-kinetic-gazebo-plugins ros-kinetic-controller-manager -y
sudo apt-get install python-opencv -y
sudo apt-get install python-numpy -y
sudo apt-get install python-scikits-learn -y
sudo apt-get install ros-kinetic-rosbash -y
sudo apt-get update

#Navigation package installation
cd src/robobreizh_navigation
chmod +x ./install.sh && ./install.sh

