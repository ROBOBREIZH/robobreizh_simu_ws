sudo apt-get install ros-kinetic-pointcloud-to-laserscan -y
sudo apt-get install ros-kinetic-navigation -y
sudo apt-get install ros-kinetic-teleop-twist-keyboard -y
sudo apt-get install ros-kinetic-ddynamic-reconfigure-python -y
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
cat /etc/apt/sources.list.d/gazebo-stable.list
wget https://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install gazebo7 -y
sudo apt-get install libignition-math2-dev -y
sudo apt-get install ros-kinetic-tf2-sensor-msgs ros-kinetic-ros-control ros-kinetic-ros-controllers ros-kinetic-gazebo-ros-control ros-kinetic-gazebo-plugins ros-kinetic-controller-manager -y
sudo apt-get install ros-kinetic-pepper-meshes
sudo apt-get install python-opencv -y
sudo apt-get install python-numpy -y
sudo apt-get install python-scikits-learn -y
sudo apt-get install ros-kinetic-rosbash -y

