# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="include\
		This package provides an implementation of a 3D costmap th[...]"
HOMEPAGE="http://wiki.ros.org/non-persisent-voxel-layer"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/dashing/${PN}/2.0.2-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/geometry_msgs
	ros-dashing/laser_geometry
	ros-dashing/map_msgs
	ros-dashing/nav2_costmap_2d
	ros-dashing/nav2_msgs
	ros-dashing/nav2_voxel_grid
	ros-dashing/nav_msgs
	ros-dashing/pcl_conversions
	ros-dashing/pluginlib
	ros-dashing/rclcpp
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
	ros-dashing/tf2
	ros-dashing/tf2_ros
	ros-dashing/visualization_msgs
	test? ( ros-dashing/ament_lint_auto )
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
