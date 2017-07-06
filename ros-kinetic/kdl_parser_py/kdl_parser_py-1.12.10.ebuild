# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="NONE"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/kdl_parser-release/archive/release/kinetic/kdl_parser_py/1.12.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/orocos_kdl
	ros-kinetic/python_orocos_kdl
	ros-kinetic/urdf
	ros-kinetic/urdfdom_py
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

