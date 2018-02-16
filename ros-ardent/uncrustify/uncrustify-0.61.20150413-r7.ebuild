# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Package a newer version of uncrustify \(0.61+, b6593c1, April 14th 2015\)."
HOMEPAGE="https://github.com/bengardner/uncrustify"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/ardent/${PN}/0.61.20150413-7.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake_core
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
