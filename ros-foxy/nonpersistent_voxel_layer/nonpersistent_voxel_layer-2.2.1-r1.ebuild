# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="include\
		This package provides an implementation of a 3D costmap th[...]"
HOMEPAGE="http://wiki.ros.org/non-persisent-voxel-layer"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/foxy/${PN}/2.2.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/laser_geometry
	ros-foxy/map_msgs
	ros-foxy/nav2_costmap_2d
	ros-foxy/nav2_msgs
	ros-foxy/nav2_voxel_grid
	ros-foxy/nav_msgs
	ros-foxy/pcl_conversions
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/tf2
	ros-foxy/tf2_ros
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_lint_auto )
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
