# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This package provides an implementation of a 2D costmap that takes in sensor
   '"
HOMEPAGE="http://wiki.ros.org/costmap_2d"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/indigo/costmap_2d/1.12.13-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/laser_geometry
	ros-indigo/map_msgs
	ros-indigo/message_filters
	ros-indigo/message_runtime
	ros-indigo/nav_msgs
	ros-indigo/pcl_conversions
	ros-indigo/pcl_ros
	ros-indigo/pluginlib
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/rostest
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/visualization_msgs
	ros-indigo/voxel_grid
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

