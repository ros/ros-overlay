# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The teb_local_planner package implements a plugin\
	to the base_local_pl[...]"
HOMEPAGE="http://wiki.ros.org/teb_local_planner"
SRC_URI="https://github.com/rst-tu-dortmund/${PN}-release/archive/release/noetic/${PN}/0.9.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/base_local_planner
	ros-noetic/costmap_2d
	ros-noetic/costmap_converter
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/interactive_markers
	ros-noetic/libg2o
	ros-noetic/mbf_costmap_core
	ros-noetic/mbf_msgs
	ros-noetic/message_runtime
	ros-noetic/nav_core
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/std_msgs
	ros-noetic/tf2
	ros-noetic/tf2_ros
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	ros-noetic/message_generation
	ros-noetic/tf2_eigen
	ros-noetic/tf2_geometry_msgs
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
