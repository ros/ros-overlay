# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides a kinematics implementation for the PR2 robot. It can[...]"
HOMEPAGE="http://ros.org/wiki/pr2_arm_kinematics"
SRC_URI="https://github.com/pr2-gbp/pr2_kinematics-release/archive/release/melodic/${PN}/1.0.10-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/angles
	ros-melodic/geometry_msgs
	ros-melodic/kdl_parser
	ros-melodic/moveit_core
	ros-melodic/moveit_msgs
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/tf_conversions
	ros-melodic/urdf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
