#rise-dcl-log

# 06.29.2026

### Old command

```Shell
docker create \
 --name workspace \
 --gpus all \
 --net=host \
 -e DISPLAY=$DISPLAY \
 -v /tmp/.X11-unix:/tmp/.X11-unix \
 -v /home/akhaled/workspace:/home/akhaled/workspace \
 -w /home/akhaled/workspace \
 ubuntu:20.04 \
 tail -f /dev/null
```

### New command

```
docker run -it \
  --name=ros_noetic \
  --net=host \
  --gpus all \
  -e DISPLAY=$DISPLAY \
  -e NVIDIA_DRIVER_CAPABILITIES=all \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  osrf/ros:noetic-desktop-full
  
docker exec -it ros_noetic bash
```

[https://wiki.ros.org/noetic/Installation/Ubuntu](https://wiki.ros.org/noetic/Installation/Ubuntu)
*start from step 1.5*

[Presentation for Setup](https://docs.google.com/presentation/d/1C7Mwcdt3m7QfknjxOcZXIfugGhLVEKumrAQWOlkqRtM/edit?pli=1&slide=id.p#slide=id.p)

```
apt update
apt-get install git-core python3-wstool python3-vcstools python3-rosdep ros-noetic-control-msgs ros-noetic-joystick-drivers ros-noetic-xacro ros-noetic-tf2-ros ros-noetic-rviz ros-noetic-cv-bridge ros-noetic-actionlib ros-noetic-actionlib-msgs ros-noetic-dynamic-reconfigure ros-noetic-trajectory-msgs ros-noetic-rospy-message-converter

apt install python3 python3-pip python3-venv

pip install argparse

mkdir ros_ws
cd ros_ws
mkdir src

wstool init .

apt install git
cd src
git clone https://github.com/RethinkRobotics/sawyer_robot.git
wstool merge sawyer_robot/sawyer_robot.rosinstall
wstool update
source /opt/ros/noetic/setup.bash
catkin_make

apt-get install gazebo11 ros-noetic-gazebo-ros  ros-noetic-gazebo-ros-control
ros-noetic-gazebo-ros-pkgs ros-noetic-ros-control ros-noetic-control-toolbox ros-noetic-realtime-tools
apt-get install gazebo11 ros-noetic-gazebo-ros  ros-noetic-gazebo-ros-control  ros-noetic-gazebo-ros-pkgs ros-noetic-ros-control ros-noetic-control-toolbox ros-noetic-realtime-tools  ros-noetic-ros-controllers ros-noetic-xacro python3-wstool ros-noetic-tf-conversions ros-noetic-kdl-parser

cd src

git clone https://github.com/RethinkRobotics/sawyer_simulator.git -b noetic_devel
git clone https://github.com/RethinkRobotics-opensource/sns_ik.git -b melodic-devel

rm .rosinstall
wstool init .
wstool merge sawyer_simulator/sawyer_simulator.rosinstall
wstool update

cd ..
source /opt/ros/noetic/setup.bash
catkin_make

cd src/sawyer_simulator/sawyer_gazebo/src
apt install nano
nano head_interface.cpp

cd /ros_ws/src/sawyer_simulator/sawyer_gazebo/src/head_interface.cpp line 71:
  cv_ptr->image = cv::imread(img_path, cv::IMREAD_UNCHANGED);
  
 catkin_make 
 
 cd ros_ws
 . devel/setup.bash
 roslaunch sawyer_sim_examples sawyer_pick_and_place_demo.launch
```

# 06.30.2026

we are now trying to see the simulator in the remote desktop via nomachine
make sure you ssh out of the device before connecting with remote desktop connection @ 10.210.22.197
```
pkill -u $USER -f Xorg
```

## errors

Python 3 errors: `ln -s /usr/bin/python3 /usr/bin/python`
Syntax error in `/root/ros_ws/src/sawyer_simulator/sawyer_sim_examples/scripts/ik_pick_and_place_demo.py`
- have to write `as e` instead `of , e` (three exceptions)

###sources
[tf tutorials](https://wiki.ros.org/tf/Tutorials)
[geometry msgs wiki](https://docs.ros.org/en/noetic/api/geometry_msgs/html/index-msg.html)
[pubsub with python](https://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber(python))
[frames](/_pages/rise/frames.pdf)

###issues & solutions
- we had an issue where the interpolation for the robotic arm to come down onto the block (_servo_to_pose) was linear, which didn't work for quaternions due to unit vector math that meant that linear interpolation would make the length of the vector !=1
  - solution: we reduced the step size to 1 so that we did not have to worry about intermediate steps. since we are only working with cartesian movements, this wasn't a huge worry
- initial block pose was incorrect
  - we found out how to find the block pose using the gazebo sim
- the block pose was not dynamic (i.e. if the block got moved, the robot didn't know where to go)
  a. learned how rostopic works and found the topic that published information about the coordinates of the scene objects
    i. rostopic list
  b. learned how to subscribe to the topic in the CLI and found the type of the message that was being published
    i. rostopic info /gazebo/model_states >> ModelStates
  c. learned about pub/sub in python (!= CLI) and how to parse the data
  d. learned about what tf does and began to implement using CLI first
  e. then learned how to use it in code using tutorials above. also what a frame was and how to perform type manipulation (i.e. Point <==> Vector3)
  f. Had to offset the position due to unknown reasons (likely because model is somewhat inaccurate), though it might also be because of something with the simplified orientation calculations we did
  
personal learning
* learned more about the CLI, especially became comfortable with nano in Linux
* understood try except finally blocks and how to handle exceptions gracefully
* learned Python class structure (DataSubscriber)

  
