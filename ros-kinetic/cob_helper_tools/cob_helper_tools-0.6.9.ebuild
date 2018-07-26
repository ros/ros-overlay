# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Helper scripts for Care-O-bot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/${PN}/0.6.9-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_msgs
	ros-kinetic/cob_script_server
	ros-kinetic/diagnostic_msgs
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/message_runtime
	ros-kinetic/rospy
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
