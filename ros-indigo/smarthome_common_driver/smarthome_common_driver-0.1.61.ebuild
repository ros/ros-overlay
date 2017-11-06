# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package is Common interface for RosJava."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosalfred-release/smarthome_common_driver-release/archive/release/indigo/smarthome_common_driver/0.1.61-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosjava_core
	ros-indigo/rosjava_dynamic_reconfigure
	ros-indigo/rosjava_messages
	ros-indigo/smarthome_comm_msgs_java
	ros-indigo/smarthome_heater_msgs_java
	ros-indigo/smarthome_media_msgs_java
	ros-indigo/smarthome_network_zeroconf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rosjava_build_tools
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
