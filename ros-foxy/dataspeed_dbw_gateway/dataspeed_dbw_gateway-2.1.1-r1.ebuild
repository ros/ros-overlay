# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A multiplexer and demultiplexer between common dbw messages and platform sp[...]"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/foxy/${PN}/2.1.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/dataspeed_dbw_common
	ros-foxy/dataspeed_dbw_msgs
	ros-foxy/dbw_fca_msgs
	ros-foxy/dbw_ford_msgs
	ros-foxy/dbw_polaris_msgs
	ros-foxy/diagnostic_msgs
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/ros_environment
	ros-foxy/rosidl_default_runtime
	ros-foxy/sensor_msgs
	test? ( ros-foxy/ament_cmake_gtest )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
