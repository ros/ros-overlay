# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Driver for u-blox GPS devices."
HOMEPAGE="http://ros.org/wiki/ublox"
SRC_URI="https://github.com/KumarRobotics/ublox-release/archive/release/noetic/${PN}/1.5.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_updater
	ros-noetic/roscpp
	ros-noetic/roscpp_serialization
	ros-noetic/rtcm_msgs
	ros-noetic/tf
	ros-noetic/ublox_msgs
	ros-noetic/ublox_serialization
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
