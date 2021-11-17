# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Package for creating a hardware interface to the robot using the EtherCAT m[...]"
HOMEPAGE="http://ros.org/wiki/ethercat_hardware"
SRC_URI="https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/noetic/${PN}/1.9.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/eml
	ros-noetic/message_runtime
	ros-noetic/pluginlib
	ros-noetic/pr2_hardware_interface
	ros-noetic/pr2_msgs
	ros-noetic/realtime_tools
	ros-noetic/roscpp
	dev-libs/log4cxx
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
