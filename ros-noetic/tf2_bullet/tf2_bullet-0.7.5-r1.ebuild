# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="tf2_bullet"
HOMEPAGE="http://www.ros.org/wiki/tf2_bullet"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/noetic/${PN}/0.7.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/tf2
	sci-physics/bullet
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
