# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="An easy wrapper for using parameters in ROS."
HOMEPAGE="https://github.com/cbandera/rosparam_handler.git"
SRC_URI="https://github.com/cbandera/${PN}-release/archive/release/kinetic/${PN}/0.1.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/catkin
	test? ( ros-kinetic/dynamic_reconfigure )
	test? ( ros-kinetic/roscpp )
"
DEPEND="${RDEPEND}
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
