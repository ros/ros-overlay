# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Assorted filters designed to operate on 2D planar laser scanners,\
	whic[...]"
HOMEPAGE="http://ros.org/wiki/laser_filters"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.0.6-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/angles
	ros-humble/filters
	ros-humble/laser_geometry
	ros-humble/message_filters
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rclcpp_lifecycle
	ros-humble/sensor_msgs
	ros-humble/tf2
	ros-humble/tf2_ros
	test? ( ros-humble/ament_cmake_gtest )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
