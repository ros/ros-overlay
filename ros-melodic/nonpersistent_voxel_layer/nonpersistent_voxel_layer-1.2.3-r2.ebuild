# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="include\
		This package provides an implementation of a 3D costmap th[...]"
HOMEPAGE="http://wiki.ros.org/non-persisent-voxel-layer"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/melodic/${PN}/1.2.3-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/costmap_2d
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/laser_geometry
	ros-melodic/map_msgs
	ros-melodic/message_filters
	ros-melodic/message_runtime
	ros-melodic/nav_msgs
	ros-melodic/pcl_conversions
	ros-melodic/pcl_ros
	ros-melodic/pluginlib
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/visualization_msgs
	ros-melodic/voxel_grid
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
