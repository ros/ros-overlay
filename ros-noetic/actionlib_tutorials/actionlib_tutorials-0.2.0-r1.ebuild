# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The actionlib_tutorials package"
HOMEPAGE="http://www.ros.org/wiki/actionlib/Tutorials"
SRC_URI="https://github.com/ros-gbp/common_tutorials-release/archive/release/noetic/${PN}/0.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/message_runtime
	ros-noetic/roscpp
"
DEPEND="${RDEPEND}
	ros-noetic/actionlib_msgs
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/std_msgs
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
