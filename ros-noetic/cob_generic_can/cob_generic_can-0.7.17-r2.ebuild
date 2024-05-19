# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The package cob_generic_can provides an interface for nodes on a can-bus an[...]"
HOMEPAGE="http://ros.org/wiki/cob_generic_can"
SRC_URI="https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/${PN}/0.7.17-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_utilities
	ros-noetic/libntcan
	ros-noetic/libpcan
	ros-noetic/socketcan_interface
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
