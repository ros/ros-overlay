# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Small lib to transform sensor_msgs with tf. Most notably, PointCloud2"
HOMEPAGE="http://www.ros.org/wiki/tf2_ros"
SRC_URI="https://github.com/ros2-gbp/geometry2-release/archive/release/crystal/${PN}/0.10.1-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/sensor_msgs
	ros-crystal/tf2
	ros-crystal/tf2_ros
	test? ( ros-crystal/ament_cmake_gtest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
