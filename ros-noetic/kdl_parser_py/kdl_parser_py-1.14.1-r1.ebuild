# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The Kinematics and Dynamics Library \(KDL\) defines a tree structure\
   to[...]"
HOMEPAGE="http://ros.org/wiki/kdl_parser_py"
SRC_URI="https://github.com/ros-gbp/kdl_parser-release/archive/release/noetic/${PN}/1.14.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/urdfdom_py
	test? ( ros-noetic/rostest )
	dev-python/python_orocos_kdl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/catkin_pkg
	dev-python/setuptools
	dev-python/catkin_pkg
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
