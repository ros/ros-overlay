# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="include\
		This package provides an implementation of a 3D costmap th[...]"
HOMEPAGE="http://wiki.ros.org/non-persisent-voxel-layer"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/eloquent/${PN}/2.1.1-2.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/geometry_msgs
	ros-eloquent/laser_geometry
	ros-eloquent/map_msgs
	ros-eloquent/nav2_costmap_2d
	ros-eloquent/nav2_msgs
	ros-eloquent/nav2_voxel_grid
	ros-eloquent/nav_msgs
	ros-eloquent/pcl_conversions
	ros-eloquent/pluginlib
	ros-eloquent/rclcpp
	ros-eloquent/sensor_msgs
	ros-eloquent/std_msgs
	ros-eloquent/tf2
	ros-eloquent/tf2_ros
	ros-eloquent/visualization_msgs
	test? ( ros-eloquent/ament_lint_auto )
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
