# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package is bot of Alfred Assitant for ROS This package is part of Alfred A"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosalfred-release/alfred_bot-release/archive/release/indigo/alfred_bot/0.1.121-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosjava_core
	ros-indigo/rosjava_dynamic_reconfigure
	ros-indigo/smarthome_comm_msgs
	ros-indigo/smarthome_common_driver
	ros-indigo/smarthome_media_model
	ros-indigo/smarthome_media_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rosjava_build_tools
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

