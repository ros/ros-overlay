# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A template for ROS packages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rm-controls/rm_control-release/archive/release/noetic/${PN}/0.1.18-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/nav_msgs
	ros-noetic/rm_common
	ros-noetic/rm_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/serial
	ros-noetic/std_msgs
	ros-noetic/tf2_geometry_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
