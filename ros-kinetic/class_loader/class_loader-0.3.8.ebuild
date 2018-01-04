# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The class_loader package is a ROS-independent package for loading plugins d[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/0.3.8-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/boost
	dev-libs/console_bridge
	dev-libs/poco
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
