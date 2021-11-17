# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="roslaunch scripts for starting the TurtleBot3"
HOMEPAGE="http://wiki.ros.org/turtlebot3_bringup"
SRC_URI="https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/noetic/${PN}/1.2.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_msgs
	ros-noetic/hls_lfcd_lds_driver
	ros-noetic/joint_state_publisher
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/rosserial_python
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/turtlebot3_description
	ros-noetic/turtlebot3_msgs
	ros-noetic/turtlebot3_teleop
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
