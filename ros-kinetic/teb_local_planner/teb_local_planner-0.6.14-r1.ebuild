# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The teb_local_planner package implements a plugin\
	to the base_local_pl[...]"
HOMEPAGE="http://wiki.ros.org/teb_local_planner"
SRC_URI="https://github.com/rst-tu-dortmund/${PN}-release/archive/release/kinetic/${PN}/0.6.14-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/base_local_planner
	ros-kinetic/costmap_2d
	ros-kinetic/costmap_converter
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/interactive_markers
	ros-kinetic/libg2o
	ros-kinetic/message_runtime
	ros-kinetic/nav_core
	ros-kinetic/nav_msgs
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/tf_conversions
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
