# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains the python bindings PyKDL for the Kinematics and Dyna[...]"
HOMEPAGE="http://wiki.ros.org/python_orocos_kdl"
SRC_URI="https://github.com/smits/orocos-kdl-release/archive/release/indigo/${PN}/1.3.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	ros-indigo/orocos_kdl
	dev-python/sip
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
