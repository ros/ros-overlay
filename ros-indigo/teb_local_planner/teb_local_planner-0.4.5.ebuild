# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The teb_local_planner package implements a plugin\
\	to the base_local_plan[...]"
HOMEPAGE="http://wiki.ros.org/teb_local_planner"
SRC_URI="https://github.com/rst-tu-dortmund/${PN}-release/archive/release/indigo/${PN}/0.4.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/base_local_planner
	ros-indigo/costmap_2d
	ros-indigo/costmap_converter
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/interactive_markers
	ros-indigo/libg2o
	ros-indigo/message_runtime
	ros-indigo/nav_core
	ros-indigo/nav_msgs
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/tf_conversions
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
