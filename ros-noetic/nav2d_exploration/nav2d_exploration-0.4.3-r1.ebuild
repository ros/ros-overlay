# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package holds a collection of plugins for the RobotNavigator, that pro[...]"
HOMEPAGE="http://wiki.ros.org/robot_operator"
SRC_URI="https://github.com/skasperski/navigation_2d-release/archive/release/noetic/${PN}/0.4.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-3.0-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/nav2d_navigator
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/tf
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
