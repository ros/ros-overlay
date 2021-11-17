# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The robot_navigation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DLu/${PN}-release/archive/release/noetic/${PN}/0.3.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/costmap_queue
	ros-noetic/dlux_global_planner
	ros-noetic/dlux_plugins
	ros-noetic/dwb_critics
	ros-noetic/dwb_local_planner
	ros-noetic/dwb_msgs
	ros-noetic/dwb_plugins
	ros-noetic/global_planner_tests
	ros-noetic/locomotor
	ros-noetic/locomotor_msgs
	ros-noetic/locomove_base
	ros-noetic/nav_2d_msgs
	ros-noetic/nav_2d_utils
	ros-noetic/nav_core2
	ros-noetic/nav_core_adapter
	ros-noetic/nav_grid
	ros-noetic/nav_grid_iterators
	ros-noetic/nav_grid_pub_sub
	ros-noetic/nav_grid_server
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
