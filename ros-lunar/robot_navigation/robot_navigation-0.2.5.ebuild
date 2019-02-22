# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The robot_navigation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/${PN}-release/archive/release/lunar/${PN}/0.2.5-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/costmap_queue
	ros-lunar/dlux_global_planner
	ros-lunar/dlux_plugins
	ros-lunar/dwb_critics
	ros-lunar/dwb_local_planner
	ros-lunar/dwb_msgs
	ros-lunar/dwb_plugins
	ros-lunar/global_planner_tests
	ros-lunar/locomotor
	ros-lunar/locomotor_msgs
	ros-lunar/locomove_base
	ros-lunar/nav_2d_msgs
	ros-lunar/nav_2d_utils
	ros-lunar/nav_core2
	ros-lunar/nav_core_adapter
	ros-lunar/nav_grid
	ros-lunar/nav_grid_iterators
	ros-lunar/nav_grid_pub_sub
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
