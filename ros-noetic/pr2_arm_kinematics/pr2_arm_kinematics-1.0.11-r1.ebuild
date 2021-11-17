# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package provides a kinematics implementation for the PR2 robot. It can[...]"
HOMEPAGE="http://ros.org/wiki/pr2_arm_kinematics"
SRC_URI="https://github.com/pr2-gbp/pr2_kinematics-release/archive/release/noetic/${PN}/1.0.11-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/angles
	ros-noetic/geometry_msgs
	ros-noetic/kdl_parser
	ros-noetic/moveit_core
	ros-noetic/moveit_msgs
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/tf_conversions
	ros-noetic/urdf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
