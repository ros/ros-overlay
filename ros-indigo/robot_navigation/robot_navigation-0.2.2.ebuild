# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The robot_navigation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/${PN}-release/archive/release/indigo/${PN}/0.2.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/costmap_queue
	ros-indigo/dlux_global_planner
	ros-indigo/dlux_plugins
	ros-indigo/dwb_critics
	ros-indigo/dwb_local_planner
	ros-indigo/dwb_msgs
	ros-indigo/dwb_plugins
	ros-indigo/global_planner_tests
	ros-indigo/locomotor
	ros-indigo/locomotor_msgs
	ros-indigo/locomove_base
	ros-indigo/nav_2d_msgs
	ros-indigo/nav_2d_utils
	ros-indigo/nav_core2
	ros-indigo/nav_core_adapter
	ros-indigo/nav_grid
	ros-indigo/nav_grid_iterators
	ros-indigo/nav_grid_pub_sub
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
