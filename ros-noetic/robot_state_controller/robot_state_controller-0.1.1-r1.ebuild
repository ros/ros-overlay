# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A template for ROS packages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/${PN}/0.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_interface
	ros-noetic/hardware_interface
	ros-noetic/kdl_parser
	ros-noetic/pluginlib
	ros-noetic/realtime_tools
	ros-noetic/rm_common
	ros-noetic/roscpp
	ros-noetic/roslint
	ros-noetic/tf2_kdl
	ros-noetic/tf2_ros
	ros-noetic/urdf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
