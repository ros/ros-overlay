# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="include\
		This package provides an implementation of a 3D costmap th[...]"
HOMEPAGE="http://wiki.ros.org/non-persisent-voxel-layer"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/kinetic/${PN}/1.1.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/costmap_2d
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/laser_geometry
	ros-kinetic/map_msgs
	ros-kinetic/message_filters
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/pcl_conversions
	ros-kinetic/pcl_ros
	ros-kinetic/pluginlib
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
	ros-kinetic/voxel_grid
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
