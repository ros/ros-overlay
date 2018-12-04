# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Plugin based local planner implementing the nav_core2::LocalPlanner interface."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/${PN}/0.2.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/dwb_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/nav_2d_msgs
	ros-kinetic/nav_2d_utils
	ros-kinetic/nav_core2
	ros-kinetic/nav_msgs
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
	test? ( ros-kinetic/roslint )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
