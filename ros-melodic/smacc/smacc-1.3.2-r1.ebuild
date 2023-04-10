# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="SMACC is a ROS/C++ library to implement in easy and systematic way UML Stat[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/robosoft-ai/${PN}-release/archive/release/melodic/${PN}/1.3.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/controller_manager_msgs
	ros-melodic/message_runtime
	ros-melodic/pluginlib
	ros-melodic/ros_control
	ros-melodic/roscpp
	ros-melodic/smacc_msgs
	ros-melodic/std_msgs
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
