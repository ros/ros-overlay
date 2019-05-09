# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The move_base_flex messages package providing the action definition files f[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uos-gbp/move_base_flex-release/archive/release/lunar/${PN}/0.2.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="3-Clause BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib_msgs
	ros-lunar/geometry_msgs
	ros-lunar/message_runtime
	ros-lunar/nav_msgs
	ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/genmsg
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
