# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Driver for NovAtel receivers"
HOMEPAGE="https://github.com/swri-robotics/novatel_gps_driver"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/galactic/${PN}/4.1.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/diagnostic_msgs
	ros-galactic/diagnostic_updater
	ros-galactic/gps_msgs
	ros-galactic/nav_msgs
	ros-galactic/novatel_gps_msgs
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/swri_math_util
	ros-galactic/swri_roscpp
	ros-galactic/swri_serial_util
	ros-galactic/tf2
	ros-galactic/tf2_geometry_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_index_cpp )
	test? ( ros-galactic/ament_lint_auto )
	dev-libs/boost[python]
	net-libs/libpcap
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
