# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Trajectory critics for the dwb_local_planner that work well together with t[...]"
HOMEPAGE="https://github.com/dfki-ric/mir_dwb_critics"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/${PN}/1.0.4-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/angles
	ros-kinetic/costmap_queue
	ros-kinetic/dwb_critics
	ros-kinetic/dwb_local_planner
	ros-kinetic/geometry_msgs
	ros-kinetic/nav_2d_msgs
	ros-kinetic/nav_2d_utils
	ros-kinetic/nav_core2
	ros-kinetic/nav_grid_iterators
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
