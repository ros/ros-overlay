# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This package provides an implementation of a 2D costmap that takes in senso[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/${PN}/0.1.7-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/geometry_msgs
	ros-crystal/laser_geometry
	ros-crystal/map_msgs
	ros-crystal/message_filters
	ros-crystal/nav2_dynamic_params
	ros-crystal/nav2_msgs
	ros-crystal/nav2_util
	ros-crystal/nav2_voxel_grid
	ros-crystal/nav_msgs
	ros-crystal/pluginlib
	ros-crystal/rclcpp
	ros-crystal/sensor_msgs
	ros-crystal/std_msgs
	ros-crystal/tf2
	ros-crystal/tf2_geometry_msgs
	ros-crystal/tf2_ros
	ros-crystal/tf2_sensor_msgs
	ros-crystal/visualization_msgs
	test? ( ros-crystal/ament_cmake_gtest )
	test? ( ros-crystal/ament_cmake_pytest )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	test? ( ros-crystal/launch )
	test? ( ros-crystal/launch_testing )
	test? ( ros-crystal/nav2_map_server )
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	ros-crystal/nav2_common
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
