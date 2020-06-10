# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The move_base_flex messages package providing the action definition files f[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uos-gbp/move_base_flex-release/archive/release/noetic/${PN}/0.3.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib_msgs
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/nav_msgs
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/genmsg
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
