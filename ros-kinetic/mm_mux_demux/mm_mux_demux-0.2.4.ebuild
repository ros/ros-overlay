# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Multiplexing many packet types across a single connection. Great for embedd[...]"
HOMEPAGE="https://github.com/stonier/message_multiplexing"
SRC_URI="https://github.com/yujinrobot-release/message_multiplexing-release/archive/release/kinetic/${PN}/0.2.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ecl_build
	ros-kinetic/ecl_command_line
	ros-kinetic/ecl_containers
	ros-kinetic/ecl_formatters
	ros-kinetic/ecl_threads
	ros-kinetic/ecl_time
	ros-kinetic/ecl_utilities
	ros-kinetic/mm_core_msgs
	ros-kinetic/mm_messages
	ros-kinetic/nanomsg
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
