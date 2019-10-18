# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The move_base_flex messages package providing the action definition files f[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/${PN}/0.2.5-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="3-Clause BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/genmsg
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
