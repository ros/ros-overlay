# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="A multiplexer and demultiplexer between common dbw messages and platform sp[...]"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/${PN}/2.1.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/dataspeed_dbw_common
	ros-humble/dataspeed_dbw_msgs
	ros-humble/dbw_fca_msgs
	ros-humble/dbw_ford_msgs
	ros-humble/dbw_polaris_msgs
	ros-humble/diagnostic_msgs
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/ros_environment
	ros-humble/rosidl_default_runtime
	ros-humble/sensor_msgs
	test? ( ros-humble/ament_cmake_gtest )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
	ros-humble/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
