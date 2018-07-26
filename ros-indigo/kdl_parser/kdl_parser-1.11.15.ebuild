# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The Kinematics and Dynamics Library \(KDL\) defines a tree structure\
   to[...]"
HOMEPAGE="http://ros.org/wiki/kdl_parser"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/indigo/${PN}/1.11.15-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/orocos_kdl
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
