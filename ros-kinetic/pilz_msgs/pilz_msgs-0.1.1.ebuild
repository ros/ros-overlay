# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pilz_msgs package"
HOMEPAGE="https://wiki.ros.org/pilz_industrial_motion"
SRC_URI="https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/${PN}/0.1.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/message_runtime
	ros-kinetic/moveit_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/genmsg
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
