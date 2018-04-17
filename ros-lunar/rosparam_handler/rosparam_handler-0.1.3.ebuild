# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="An easy wrapper for using parameters in ROS."
HOMEPAGE="https://github.com/cbandera/rosparam_handler.git"
SRC_URI="https://github.com/cbandera/${PN}-release/archive/release/lunar/${PN}/0.1.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/catkin
	test? ( ros-lunar/dynamic_reconfigure )
	test? ( ros-lunar/roscpp )
"
DEPEND="${RDEPEND}
	ros-lunar/rostest
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
