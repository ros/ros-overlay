# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The teb_local_planner package implements a plugin\
	to the base_local_pl[...]"
HOMEPAGE="http://wiki.ros.org/teb_local_planner"
SRC_URI="https://github.com/rst-tu-dortmund/${PN}-release/archive/release/melodic/${PN}/0.8.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/base_local_planner
	ros-melodic/costmap_2d
	ros-melodic/costmap_converter
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/interactive_markers
	ros-melodic/libg2o
	ros-melodic/mbf_costmap_core
	ros-melodic/mbf_msgs
	ros-melodic/message_runtime
	ros-melodic/nav_core
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/tf2
	ros-melodic/tf2_ros
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/message_generation
	ros-melodic/tf2_eigen
	ros-melodic/tf2_geometry_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
