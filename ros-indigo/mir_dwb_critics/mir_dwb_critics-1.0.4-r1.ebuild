# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Trajectory critics for the dwb_local_planner that work well together with t[...]"
HOMEPAGE="https://github.com/dfki-ric/mir_dwb_critics"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/indigo/${PN}/1.0.4-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/angles
	ros-indigo/costmap_queue
	ros-indigo/dwb_critics
	ros-indigo/dwb_local_planner
	ros-indigo/geometry_msgs
	ros-indigo/nav_2d_msgs
	ros-indigo/nav_2d_utils
	ros-indigo/nav_core2
	ros-indigo/nav_grid_iterators
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
