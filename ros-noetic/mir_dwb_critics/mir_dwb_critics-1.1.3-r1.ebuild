# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Trajectory critics for the dwb_local_planner that work well together with t[...]"
HOMEPAGE="https://github.com/dfki-ric/mir_dwb_critics"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/${PN}/1.1.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/angles
	ros-noetic/costmap_queue
	ros-noetic/dwb_critics
	ros-noetic/dwb_local_planner
	ros-noetic/geometry_msgs
	ros-noetic/nav_2d_msgs
	ros-noetic/nav_2d_utils
	ros-noetic/nav_core2
	ros-noetic/nav_grid_iterators
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	dev-python/matplotlib
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
