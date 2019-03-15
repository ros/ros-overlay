# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package for creating a hardware interface to the robot using the EtherCAT m[...]"
HOMEPAGE="http://ros.org/wiki/ethercat_hardware"
SRC_URI="https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/lunar/${PN}/1.8.18-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/diagnostic_msgs
	ros-lunar/diagnostic_updater
	ros-lunar/eml
	ros-lunar/message_runtime
	ros-lunar/pluginlib
	ros-lunar/pr2_hardware_interface
	ros-lunar/pr2_msgs
	ros-lunar/realtime_tools
	ros-lunar/roscpp
	dev-libs/log4cxx
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
