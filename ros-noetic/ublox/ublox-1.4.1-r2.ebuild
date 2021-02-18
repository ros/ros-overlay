# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="Provides a ublox_gps node for u-blox GPS receivers, messages, and serializa[...]"
HOMEPAGE="http://wiki.ros.org/ublox"
SRC_URI="https://github.com/KumarRobotics/${PN}-release/archive/release/noetic/${PN}/1.4.1-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/ublox_gps
	ros-noetic/ublox_msgs
	ros-noetic/ublox_serialization
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
