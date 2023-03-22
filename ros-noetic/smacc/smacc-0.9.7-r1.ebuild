# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="SMACC is a ROS/C++ library to implement in easy and systematic way UML Stat[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/robosoft-ai/${PN}-release/archive/release/noetic/${PN}/0.9.7-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/controller_manager_msgs
	ros-noetic/message_runtime
	ros-noetic/pluginlib
	ros-noetic/ros_control
	ros-noetic/roscpp
	ros-noetic/smacc_msgs
	ros-noetic/std_msgs
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
