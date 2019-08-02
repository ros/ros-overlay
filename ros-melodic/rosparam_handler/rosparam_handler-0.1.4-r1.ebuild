# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An easy wrapper for using parameters in ROS."
HOMEPAGE="https://github.com/cbandera/rosparam_handler.git"
SRC_URI="https://github.com/cbandera/${PN}-release/archive/release/melodic/${PN}/0.1.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/catkin
	test? ( ros-melodic/dynamic_reconfigure )
	test? ( ros-melodic/roscpp )
"
DEPEND="${RDEPEND}
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
