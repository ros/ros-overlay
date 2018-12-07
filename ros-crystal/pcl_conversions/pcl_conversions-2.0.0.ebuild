# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Provides conversions from PCL data types and ROS message types"
HOMEPAGE="http://wiki.ros.org/pcl_conversions"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/2.0.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/builtin_interfaces
	ros-crystal/sensor_msgs
	ros-crystal/std_msgs
	test? ( ros-crystal/ament_cmake_gtest )
	dev-cpp/eigen
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
