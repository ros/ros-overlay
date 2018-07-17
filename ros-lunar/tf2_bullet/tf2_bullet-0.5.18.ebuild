# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="tf2_bullet"
HOMEPAGE="http://www.ros.org/wiki/tf2_bullet"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/lunar/${PN}/0.5.18-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/tf2
	sci-physics/bullet
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
