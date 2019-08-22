# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="roslaunch scripts for starting the TurtleBot3"
HOMEPAGE="http://wiki.ros.org/turtlebot3_bringup"
SRC_URI="https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/${PN}/1.2.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/hls_lfcd_lds_driver
	ros-kinetic/joint_state_publisher
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/rosserial_python
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/turtlebot3_description
	ros-kinetic/turtlebot3_msgs
	ros-kinetic/turtlebot3_teleop
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
