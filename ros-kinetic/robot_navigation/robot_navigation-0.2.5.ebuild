# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The robot_navigation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/${PN}-release/archive/release/kinetic/${PN}/0.2.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/costmap_queue
	ros-kinetic/dlux_global_planner
	ros-kinetic/dlux_plugins
	ros-kinetic/dwb_critics
	ros-kinetic/dwb_local_planner
	ros-kinetic/dwb_msgs
	ros-kinetic/dwb_plugins
	ros-kinetic/global_planner_tests
	ros-kinetic/locomotor
	ros-kinetic/locomotor_msgs
	ros-kinetic/locomove_base
	ros-kinetic/nav_2d_msgs
	ros-kinetic/nav_2d_utils
	ros-kinetic/nav_core2
	ros-kinetic/nav_core_adapter
	ros-kinetic/nav_grid
	ros-kinetic/nav_grid_iterators
	ros-kinetic/nav_grid_pub_sub
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
