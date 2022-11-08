# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This package provides an implementation of a 2D costmap that takes in senso[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/${PN}/1.0.12-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="( BSD-3-Clause Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/angles
	ros-galactic/geometry_msgs
	ros-galactic/laser_geometry
	ros-galactic/map_msgs
	ros-galactic/message_filters
	ros-galactic/nav2_msgs
	ros-galactic/nav2_util
	ros-galactic/nav2_voxel_grid
	ros-galactic/nav_msgs
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/rclcpp_lifecycle
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/tf2
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_ros
	ros-galactic/tf2_sensor_msgs
	ros-galactic/visualization_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/launch )
	test? ( ros-galactic/launch_testing )
	test? ( ros-galactic/nav2_lifecycle_manager )
	test? ( ros-galactic/nav2_map_server )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/nav2_common
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
