# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Driver for u-blox GPS devices."
HOMEPAGE="http://ros.org/wiki/ublox"
SRC_URI="https://github.com/ros2-gbp/ublox-release/archive/release/foxy/${PN}/2.1.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/diagnostic_msgs
	ros-foxy/diagnostic_updater
	ros-foxy/geometry_msgs
	ros-foxy/rcl_interfaces
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/tf2
	ros-foxy/ublox_msgs
	ros-foxy/ublox_serialization
	dev-cpp/asio
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
