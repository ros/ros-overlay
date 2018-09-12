# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides Python to ROS multiprocess API, useful for using ROS from differen[...]"
HOMEPAGE="https://github.com/pyros-dev/pyros"
SRC_URI="https://github.com/asmodehn/${PN}-rosrelease/archive/release/kinetic/${PN}/0.4.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/pyros_common
	ros-kinetic/pyros_interfaces_ros
	dev-python/mock
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/catkin_pip
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
