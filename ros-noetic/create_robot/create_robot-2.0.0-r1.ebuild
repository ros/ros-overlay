# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS driver for iRobot\'s Create 1 and 2, based on the libcreate C++ library"
HOMEPAGE="http://wiki.ros.org/create_robot"
SRC_URI="https://github.com/autonomylab/create_autonomy-release/archive/release/noetic/${PN}/2.0.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/create_bringup
	ros-noetic/create_description
	ros-noetic/create_driver
	ros-noetic/create_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
