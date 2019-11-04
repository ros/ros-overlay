# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Small lib to transform sensor_msgs with tf. Most notably, PointCloud2"
HOMEPAGE="http://www.ros.org/wiki/tf2_ros"
SRC_URI="https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/${PN}/0.12.1-2.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/sensor_msgs
	ros-eloquent/tf2
	ros-eloquent/tf2_ros
	test? ( ros-eloquent/ament_cmake_gtest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_auto
	ros-eloquent/eigen3_cmake_module
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
