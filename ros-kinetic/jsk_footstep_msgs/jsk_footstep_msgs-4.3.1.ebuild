# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="jsk_footstep_msgs"
HOMEPAGE="http://ros.org/wiki/jsk_footstep_msgs"
SRC_URI="https://github.com/tork-a/jsk_common_msgs-release/archive/release/kinetic/${PN}/4.3.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
