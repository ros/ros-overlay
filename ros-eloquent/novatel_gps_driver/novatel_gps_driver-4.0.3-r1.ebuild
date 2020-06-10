# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Driver for NovAtel receivers"
HOMEPAGE="https://github.com/swri-robotics/novatel_gps_driver"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/eloquent/${PN}/4.0.3-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/diagnostic_msgs
	ros-eloquent/diagnostic_updater
	ros-eloquent/gps_msgs
	ros-eloquent/nav_msgs
	ros-eloquent/novatel_gps_msgs
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_components
	ros-eloquent/sensor_msgs
	ros-eloquent/std_msgs
	ros-eloquent/swri_math_util
	ros-eloquent/swri_roscpp
	ros-eloquent/swri_serial_util
	ros-eloquent/tf2
	ros-eloquent/tf2_geometry_msgs
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_index_cpp )
	test? ( ros-eloquent/ament_lint_auto )
	dev-libs/boost[python]
	net-libs/libpcap
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
