# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This package provides a kinematics implementation for the PR2 robot. It can be u'"
HOMEPAGE="http://ros.org/wiki/pr2_arm_kinematics"
SRC_URI="https://github.com/pr2-gbp/pr2_kinematics-release/archive/release/indigo/pr2_arm_kinematics/1.0.7-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/angles
	ros-indigo/geometry_msgs
	ros-indigo/kdl_parser
	ros-indigo/moveit_core
	ros-indigo/moveit_msgs
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/tf_conversions
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

