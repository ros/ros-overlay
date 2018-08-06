# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This stack provides Python bindings for Qt.\
	There are two providers: p[...]"
HOMEPAGE="http://ros.org/wiki/python_qt_binding"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/0.3.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-python/PyQt5
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rosbuild
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
