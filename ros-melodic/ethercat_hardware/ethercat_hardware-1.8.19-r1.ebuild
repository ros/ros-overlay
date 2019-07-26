# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package for creating a hardware interface to the robot using the EtherCAT m[...]"
HOMEPAGE="http://ros.org/wiki/ethercat_hardware"
SRC_URI="https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/melodic/${PN}/1.8.19-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/eml
	ros-melodic/message_runtime
	ros-melodic/pluginlib
	ros-melodic/pr2_hardware_interface
	ros-melodic/pr2_msgs
	ros-melodic/realtime_tools
	ros-melodic/roscpp
	dev-libs/log4cxx
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
