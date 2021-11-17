# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The cob_gazebo_tools package provides helper tools for the gazebo simulation"
HOMEPAGE="http://ros.org/wiki/cob_gazebo_tools"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/noetic/${PN}/0.7.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/gazebo_msgs
	ros-noetic/geometry_msgs
	ros-noetic/roslib
	ros-noetic/rospy
	ros-noetic/tf
	dev-python/numpy
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
