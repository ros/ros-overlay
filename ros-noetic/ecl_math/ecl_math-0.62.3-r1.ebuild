# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides simple support to cmath, filling in holes\
	or red[...]"
HOMEPAGE="http://wiki.ros.org/ecl_math"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/${PN}/0.62.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/ecl_license
	ros-noetic/ecl_type_traits
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
