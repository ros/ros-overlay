# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The actionlib_tutorials package"
HOMEPAGE="http://www.ros.org/wiki/actionlib/Tutorials"
SRC_URI="https://github.com/ros-gbp/common_tutorials-release/archive/release/kinetic/${PN}/0.1.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
"
DEPEND="${RDEPEND}
	ros-kinetic/actionlib_msgs
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/std_msgs
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
