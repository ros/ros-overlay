# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package for creating a hardware interface to the robot using the EtherCAT m[...]"
HOMEPAGE="http://ros.org/wiki/ethercat_hardware"
SRC_URI="https://github.com/PR2-prime/pr2_ethercat_drivers-release/archive/release/kinetic/${PN}/1.8.18-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/eml
	ros-kinetic/message_runtime
	ros-kinetic/pluginlib
	ros-kinetic/pr2_hardware_interface
	ros-kinetic/pr2_msgs
	ros-kinetic/realtime_tools
	ros-kinetic/roscpp
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
