# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/${PN}/0.0.1-1 -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/lidar_utils
	ros-dashing/message_filters
	ros-dashing/rclcpp
	ros-dashing/rclcpp_lifecycle
	ros-dashing/sensor_msgs
	ros-dashing/tf2_geometry_msgs
	ros-dashing/tf2_ros
	ros-dashing/tf2_sensor_msgs
	test? ( ros-dashing/ament_cmake_pclint )
	test? ( ros-dashing/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/autoware_auto_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
