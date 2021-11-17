# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A 2D navigation stack that takes in information from odometry, sensor\
	[...]"
HOMEPAGE="http://wiki.ros.org/navigation"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.17.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-2 LGPL-2 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/amcl
	ros-noetic/base_local_planner
	ros-noetic/carrot_planner
	ros-noetic/clear_costmap_recovery
	ros-noetic/costmap_2d
	ros-noetic/dwa_local_planner
	ros-noetic/fake_localization
	ros-noetic/global_planner
	ros-noetic/map_server
	ros-noetic/move_base
	ros-noetic/move_base_msgs
	ros-noetic/move_slow_and_clear
	ros-noetic/nav_core
	ros-noetic/navfn
	ros-noetic/rotate_recovery
	ros-noetic/voxel_grid
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
