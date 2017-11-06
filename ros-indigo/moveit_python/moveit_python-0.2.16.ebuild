# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A pure-python interaface to the MoveIt! ROS API."
HOMEPAGE="http://ros.org/wiki/moveit_python"
SRC_URI="https://github.com/mikeferguson/moveit_python-release/archive/release/indigo/moveit_python/0.2.16-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/geometry_msgs
	ros-indigo/moveit_msgs
	ros-indigo/rospy
	ros-indigo/shape_msgs
	ros-indigo/tf
	dev-libs/assimp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
