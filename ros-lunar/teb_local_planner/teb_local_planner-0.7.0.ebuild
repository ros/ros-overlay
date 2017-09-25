# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The teb_local_planner package implements a plugin\
	to the base_local_pl[...]"
HOMEPAGE="http://wiki.ros.org/teb_local_planner"
SRC_URI="https://github.com/rst-tu-dortmund/teb_local_planner-release/archive/release/lunar/teb_local_planner/0.7.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/base_local_planner
	ros-lunar/costmap_2d
	ros-lunar/costmap_converter
	ros-lunar/dynamic_reconfigure
	ros-lunar/geometry_msgs
	ros-lunar/interactive_markers
	ros-lunar/libg2o
	ros-lunar/message_runtime
	ros-lunar/nav_core
	ros-lunar/nav_msgs
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/std_msgs
	ros-lunar/tf
	ros-lunar/tf_conversions
	ros-lunar/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
