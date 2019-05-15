# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Trajectory critics for the dwb_local_planner that work well together with t[...]"
HOMEPAGE="https://github.com/dfki-ric/mir_dwb_critics"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/${PN}/1.0.4-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/angles
	ros-lunar/costmap_queue
	ros-lunar/dwb_critics
	ros-lunar/dwb_local_planner
	ros-lunar/geometry_msgs
	ros-lunar/nav_2d_msgs
	ros-lunar/nav_2d_utils
	ros-lunar/nav_core2
	ros-lunar/nav_grid_iterators
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
