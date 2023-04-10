# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Filter which fuses angular velocities, accelerations, and \(optionally\) ma[...]"
HOMEPAGE="http://ros.org/wiki/imu_filter_madgwick"
SRC_URI="https://github.com/ros2-gbp/imu_tools-release/archive/release/foxy/${PN}/2.0.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/geometry_msgs
	ros-foxy/nav_msgs
	ros-foxy/rclcpp
	ros-foxy/rclcpp_action
	ros-foxy/rclcpp_lifecycle
	ros-foxy/sensor_msgs
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_cmake_gtest )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
