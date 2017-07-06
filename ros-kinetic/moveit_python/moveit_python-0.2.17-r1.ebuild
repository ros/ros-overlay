# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A pure-python interaface to the MoveIt! ROS API.'"
HOMEPAGE="http://ros.org/wiki/moveit_python"
SRC_URI="https://github.com/mikeferguson/moveit_python-release/archive/release/kinetic/moveit_python/0.2.17-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/geometry_msgs
	ros-kinetic/moveit_msgs
	ros-kinetic/rospy
	ros-kinetic/shape_msgs
	ros-kinetic/tf
	dev-libs/assimp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

