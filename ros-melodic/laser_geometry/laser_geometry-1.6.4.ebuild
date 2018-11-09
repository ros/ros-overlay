# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains a class for converting from a 2D laser scan as define[...]"
HOMEPAGE="http://ros.org/wiki/laser_geometry"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.6.4-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/angles
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/tf
	test? ( ros-melodic/rosunit )
	dev-libs/boost
	dev-cpp/eigen
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
