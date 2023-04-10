# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Message definitions for interfacing with the LGSVL Simulator for ROS and ROS 2."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/lgsvl/${PN}-release/archive/release/noetic/${PN}/0.0.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/message_generation
	ros-noetic/ros_environment
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
