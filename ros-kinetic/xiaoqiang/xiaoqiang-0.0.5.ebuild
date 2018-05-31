# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Drivers, description, and utilities for xiaoqiang."
HOMEPAGE="http://www.bwbot.org/content/xiaoqiang"
SRC_URI="https://github.com/BluewhaleRobot-release/${PN}-release/archive/release/kinetic/${PN}/0.0.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/xiaoqiang_bringup
	ros-kinetic/xiaoqiang_controller
	ros-kinetic/xiaoqiang_description
	ros-kinetic/xiaoqiang_driver
	ros-kinetic/xiaoqiang_freenect
	ros-kinetic/xiaoqiang_monitor
	ros-kinetic/xiaoqiang_msgs
	ros-kinetic/xiaoqiang_navigation
	ros-kinetic/xiaoqiang_server
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
