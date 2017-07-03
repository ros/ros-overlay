# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="This package contains a class for converting from a 2D laser scan as defined by
"
HOMEPAGE="http://ros.org/wiki/laser_geometry"
SRC_URI="https://github.com/ros-gbp/laser_geometry-release/archive/release/lunar/laser_geometry/1.6.4-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/angles
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/tf
	dev-libs/boost
	dev-cpp/eigen
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

