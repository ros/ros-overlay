# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="a modified version of dwa local planner"
HOMEPAGE="http://wiki.ros.org/addwa_local_planner"
SRC_URI="https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/${PN}/0.0.12-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/base_local_planner
	ros-kinetic/costmap_2d
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/nav_core
	ros-kinetic/nav_msgs
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/tf
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	ros-kinetic/pcl_conversions
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
