# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The mbf_costmap_nav package contains the costmap navigation server implemen[...]"
HOMEPAGE="http://wiki.ros.org/move_base_flex"
SRC_URI="https://github.com/uos-gbp/move_base_flex-release/archive/release/indigo/${PN}/0.2.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="3-Clause BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/base_local_planner
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/mbf_abstract_nav
	ros-indigo/mbf_costmap_core
	ros-indigo/mbf_msgs
	ros-indigo/mbf_utility
	ros-indigo/move_base
	ros-indigo/move_base_msgs
	ros-indigo/nav_core
	ros-indigo/nav_msgs
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
