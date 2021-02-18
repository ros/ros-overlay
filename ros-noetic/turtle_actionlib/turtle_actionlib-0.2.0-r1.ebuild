# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="turtle_actionlib demonstrates how to write an action server and client with[...]"
HOMEPAGE="http://ros.org/wiki/turtle_actionlib"
SRC_URI="https://github.com/ros-gbp/common_tutorials-release/archive/release/noetic/${PN}/0.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/angles
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/std_msgs
	ros-noetic/turtlesim
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
