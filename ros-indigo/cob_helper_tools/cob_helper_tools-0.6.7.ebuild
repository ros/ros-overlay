# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Helper scripts for Care-O-bot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/indigo/${PN}/0.6.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_msgs
	ros-indigo/cob_script_server
	ros-indigo/diagnostic_msgs
	ros-indigo/rospy
	ros-indigo/tf
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
