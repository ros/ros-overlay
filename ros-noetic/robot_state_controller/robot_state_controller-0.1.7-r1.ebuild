# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A template for ROS packages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/${PN}/0.1.7-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_interface
	ros-noetic/kdl_parser
	ros-noetic/realtime_tools
	ros-noetic/rm_common
	ros-noetic/roscpp
	ros-noetic/tf2_kdl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
