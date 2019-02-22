# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The robot_navigation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DLu/${PN}-release/archive/release/melodic/${PN}/0.2.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/costmap_queue
	ros-melodic/dlux_global_planner
	ros-melodic/dlux_plugins
	ros-melodic/dwb_critics
	ros-melodic/dwb_local_planner
	ros-melodic/dwb_msgs
	ros-melodic/dwb_plugins
	ros-melodic/global_planner_tests
	ros-melodic/locomotor
	ros-melodic/locomotor_msgs
	ros-melodic/locomove_base
	ros-melodic/nav_2d_msgs
	ros-melodic/nav_2d_utils
	ros-melodic/nav_core2
	ros-melodic/nav_core_adapter
	ros-melodic/nav_grid
	ros-melodic/nav_grid_iterators
	ros-melodic/nav_grid_pub_sub
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
