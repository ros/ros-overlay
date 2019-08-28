# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rsm_rviz_plugins package includes the Robot Statemachine GUI plugin for[...]"
HOMEPAGE="https://github.com/MarcoStb1993/robot_rsm"
SRC_URI="https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/${PN}/1.1.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/interactive_markers
	ros-kinetic/roscpp
	ros-kinetic/rsm_msgs
	ros-kinetic/rviz
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
