# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="actionlib_msgs defines the common messages to interact with an\
	 action[...]"
HOMEPAGE="http://wiki.ros.org/actionlib_msgs"
SRC_URI="https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/${PN}/1.13.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/message_generation
	ros-noetic/message_runtime
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
