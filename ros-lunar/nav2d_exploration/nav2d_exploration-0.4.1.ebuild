# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package holds a collection of plugins for the RobotNavigator, that pro[...]"
HOMEPAGE="http://wiki.ros.org/robot_operator"
SRC_URI="https://github.com/skasperski/navigation_2d-release/archive/release/lunar/${PN}/0.4.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/nav2d_navigator
	ros-lunar/nav_msgs
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/tf
	ros-lunar/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
