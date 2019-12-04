# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Provides conversions from PCL data types and ROS message types"
HOMEPAGE="http://wiki.ros.org/pcl_conversions"
SRC_URI="https://github.com/ros2-gbp/perception_pcl-release/archive/release/eloquent/${PN}/2.1.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/message_filters
	ros-eloquent/pcl_msgs
	ros-eloquent/rclcpp
	ros-eloquent/sensor_msgs
	ros-eloquent/std_msgs
	test? ( ros-eloquent/ament_cmake_gtest )
	dev-cpp/eigen
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
