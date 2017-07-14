# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="a#text"
HOMEPAGE="http://wiki.ros.org/base_local_planner"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/lunar/base_local_planner/1.14.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/angles
	ros-lunar/costmap_2d
	ros-lunar/dynamic_reconfigure
	ros-lunar/geometry_msgs
	ros-lunar/message_generation
	ros-lunar/nav_core
	ros-lunar/nav_msgs
	ros-lunar/pcl_ros
	ros-lunar/pluginlib
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/std_msgs
	ros-lunar/tf
	ros-lunar/visualization_msgs
	ros-lunar/voxel_grid
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/pcl_conversions
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

