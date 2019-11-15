# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Driver for NovAtel receivers"
HOMEPAGE="https://github.com/swri-robotics/novatel_gps_driver"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/dashing/${PN}/4.0.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/diagnostic_msgs
	ros-dashing/diagnostic_updater
	ros-dashing/gps_msgs
	ros-dashing/nav_msgs
	ros-dashing/novatel_gps_msgs
	ros-dashing/rclcpp
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
	ros-dashing/swri_math_util
	ros-dashing/swri_roscpp
	ros-dashing/swri_serial_util
	ros-dashing/tf2
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_index_cpp )
	dev-libs/boost[python]
	net-libs/libpcap
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
