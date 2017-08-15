# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides an implementation of a 2D costmap that takes in senso[...]"
HOMEPAGE="http://wiki.ros.org/costmap_2d"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/lunar/costmap_2d/1.15.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/dynamic_reconfigure
	ros-lunar/geometry_msgs
	ros-lunar/laser_geometry
	ros-lunar/map_msgs
	ros-lunar/message_filters
	ros-lunar/message_runtime
	ros-lunar/nav_msgs
	ros-lunar/pcl_conversions
	ros-lunar/pcl_ros
	ros-lunar/pluginlib
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/rostest
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/tf
	ros-lunar/visualization_msgs
	ros-lunar/voxel_grid
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

