#!/bin/bash
source ../../devel/setup.bash
rosclean purge -y
roslaunch navigation gazebo_mapping.launch & 
gnome-terminal --command=" bash -c 'rosrun teleop_twist_keyboard teleop_twist_keyboard.py; $SHELL'"
