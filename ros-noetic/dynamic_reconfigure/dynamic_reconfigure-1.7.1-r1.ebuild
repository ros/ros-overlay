# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The dynamic_reconfigure package provides a means to update parameters\
	[...]"
HOMEPAGE="http://ros.org/wiki/dynamic_reconfigure"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.7.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/message_runtime
	ros-noetic/roscpp
	ros-noetic/roslib
	ros-noetic/rospy
	ros-noetic/rosservice
	ros-noetic/std_msgs
	dev-libs/boost
	dev-libs/boost
	dev-libs/boost[threads]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cpp_common
	ros-noetic/message_generation
	ros-noetic/roscpp_serialization
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
