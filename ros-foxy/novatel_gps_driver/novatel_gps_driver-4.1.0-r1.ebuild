# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Driver for NovAtel receivers"
HOMEPAGE="https://github.com/swri-robotics/novatel_gps_driver"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/foxy/${PN}/4.1.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/diagnostic_msgs
	ros-foxy/diagnostic_updater
	ros-foxy/gps_msgs
	ros-foxy/nav_msgs
	ros-foxy/novatel_gps_msgs
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/swri_math_util
	ros-foxy/swri_roscpp
	ros-foxy/swri_serial_util
	ros-foxy/tf2
	ros-foxy/tf2_geometry_msgs
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_index_cpp )
	test? ( ros-foxy/ament_lint_auto )
	dev-libs/boost[python]
	net-libs/libpcap
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
