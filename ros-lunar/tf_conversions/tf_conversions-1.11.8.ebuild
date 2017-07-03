# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="This package contains a set of conversion functions to convert
common tf datatyp"
HOMEPAGE="http://www.ros.org/wiki/tf_conversions"
SRC_URI="https://github.com/ros-gbp/geometry-release/archive/release/lunar/tf_conversions/1.11.8-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/kdl_conversions
	ros-lunar/orocos_kdl
	ros-lunar/python_orocos_kdl
	ros-lunar/tf
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

