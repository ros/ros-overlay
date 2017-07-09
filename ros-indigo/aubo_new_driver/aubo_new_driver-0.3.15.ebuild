# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The aubo_new_driver package for AUBO-I5 connect the TCP/IP Server'"
HOMEPAGE="http://wiki.ros.org/aubo_new_driver"
SRC_URI="https://github.com/auboliuxin/aubo_robot-release/archive/release/indigo/aubo_new_driver/0.3.15-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/aubo_description
	ros-indigo/aubo_msgs
	ros-indigo/control_msgs
	ros-indigo/controller_manager
	ros-indigo/geometry_msgs
	ros-indigo/hardware_interface
	ros-indigo/ros_controllers
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

