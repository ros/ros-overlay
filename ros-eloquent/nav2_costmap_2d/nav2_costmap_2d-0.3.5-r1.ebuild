# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This package provides an implementation of a 2D costmap that takes in senso[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/eloquent/${PN}/0.3.5-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="( BSD Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/geometry_msgs
	ros-eloquent/laser_geometry
	ros-eloquent/map_msgs
	ros-eloquent/message_filters
	ros-eloquent/nav2_msgs
	ros-eloquent/nav2_util
	ros-eloquent/nav2_voxel_grid
	ros-eloquent/nav_msgs
	ros-eloquent/pluginlib
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_lifecycle
	ros-eloquent/sensor_msgs
	ros-eloquent/std_msgs
	ros-eloquent/tf2
	ros-eloquent/tf2_geometry_msgs
	ros-eloquent/tf2_ros
	ros-eloquent/tf2_sensor_msgs
	ros-eloquent/visualization_msgs
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/launch )
	test? ( ros-eloquent/launch_testing )
	test? ( ros-eloquent/nav2_lifecycle_manager )
	test? ( ros-eloquent/nav2_map_server )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/nav2_common
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
