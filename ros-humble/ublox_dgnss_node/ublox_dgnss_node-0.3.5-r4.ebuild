# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Provides a ublox_gnss node for a u-blox GPS GNSS receiver using Gen 9 UBX P[...]"
HOMEPAGE="https://github.com/aussierobots/ublox_dgnss"
SRC_URI="https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/humble/${PN}/0.3.5-4.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/std_msgs
	ros-humble/ublox_ubx_interfaces
	ros-humble/ublox_ubx_msgs
	test? ( ros-humble/ament_cmake_copyright )
	test? ( ros-humble/ament_cmake_cppcheck )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
