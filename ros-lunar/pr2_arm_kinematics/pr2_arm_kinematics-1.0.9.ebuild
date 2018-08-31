# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides a kinematics implementation for the PR2 robot. It can[...]"
HOMEPAGE="http://ros.org/wiki/pr2_arm_kinematics"
SRC_URI="https://github.com/pr2-gbp/pr2_kinematics-release/archive/release/lunar/${PN}/1.0.9-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/angles
	ros-lunar/geometry_msgs
	ros-lunar/kdl_parser
	ros-lunar/moveit_core
	ros-lunar/moveit_msgs
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/tf_conversions
	ros-lunar/urdf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
