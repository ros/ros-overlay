# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Plugin based local planner implementing the nav_core2::LocalPlanner interface."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DLu/robot_navigation-release/archive/release/noetic/${PN}/0.2.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/dwb_msgs
	ros-noetic/geometry_msgs
	ros-noetic/nav_2d_msgs
	ros-noetic/nav_2d_utils
	ros-noetic/nav_core2
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/tf
	ros-noetic/visualization_msgs
	test? ( ros-noetic/roslint )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
