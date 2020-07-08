# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Trajectory critics for the dwb_local_planner that work well together with t[...]"
HOMEPAGE="https://github.com/dfki-ric/mir_dwb_critics"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/${PN}/1.0.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/angles
	ros-melodic/costmap_queue
	ros-melodic/dwb_critics
	ros-melodic/dwb_local_planner
	ros-melodic/geometry_msgs
	ros-melodic/nav_2d_msgs
	ros-melodic/nav_2d_utils
	ros-melodic/nav_core2
	ros-melodic/nav_grid_iterators
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	dev-python/matplotlib
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
