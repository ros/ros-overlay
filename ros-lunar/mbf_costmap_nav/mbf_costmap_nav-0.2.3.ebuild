# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The mbf_costmap_nav package contains the costmap navigation server implemen[...]"
HOMEPAGE="http://wiki.ros.org/move_base_flex"
SRC_URI="https://github.com/uos-gbp/move_base_flex-release/archive/release/lunar/${PN}/0.2.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="3-Clause BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/actionlib_msgs
	ros-lunar/base_local_planner
	ros-lunar/dynamic_reconfigure
	ros-lunar/geometry_msgs
	ros-lunar/mbf_abstract_nav
	ros-lunar/mbf_costmap_core
	ros-lunar/mbf_msgs
	ros-lunar/mbf_utility
	ros-lunar/move_base
	ros-lunar/move_base_msgs
	ros-lunar/nav_core
	ros-lunar/nav_msgs
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/tf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
