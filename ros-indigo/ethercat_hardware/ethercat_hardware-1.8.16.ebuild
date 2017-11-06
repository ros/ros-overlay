# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package for creating a hardware interface to the robot using the EtherCAT motor "
HOMEPAGE="http://ros.org/wiki/ethercat_hardware"
SRC_URI="https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/indigo/ethercat_hardware/1.8.16-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/eml
	ros-indigo/message_runtime
	ros-indigo/pluginlib
	ros-indigo/pr2_hardware_interface
	ros-indigo/pr2_msgs
	ros-indigo/realtime_tools
	ros-indigo/roscpp
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

