# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The Kinematics and Dynamics Library \(KDL\) defines a tree structure\
   to[...]"
HOMEPAGE="http://ros.org/wiki/kdl_parser_py"
SRC_URI="https://github.com/ros-gbp/kdl_parser-release/archive/release/indigo/${PN}/1.11.15-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/orocos_kdl
	ros-indigo/python_orocos_kdl
	ros-indigo/urdf
	ros-indigo/urdfdom_py
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
