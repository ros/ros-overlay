# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Provides Python to ROS multiprocess API, useful for using ROS from different mul'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/asmodehn/pyros-rosrelease/archive/release/indigo/pyros/0.4.1-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/pyros_common
	ros-indigo/pyros_interfaces_ros
	dev-python/mock
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/catkin_pip
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

