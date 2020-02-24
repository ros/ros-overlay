# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="eband_local_planner implements a plugin to the\
	base_local_planner. It [...]"
HOMEPAGE="http://ros.org/wiki/eband_local_planner"
SRC_URI="https://github.com/utexas-bwi-gbp/${PN}-release/archive/release/melodic/${PN}/0.4.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/base_local_planner
	ros-melodic/control_toolbox
	ros-melodic/costmap_2d
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/nav_core
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/tf2_eigen
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
