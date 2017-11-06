# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Multiplexing many packet types across a single connection. Great for embedd[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/message_multiplexing-release/archive/release/indigo/mm_mux_demux/0.2.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ecl_build
	ros-indigo/ecl_command_line
	ros-indigo/ecl_containers
	ros-indigo/ecl_formatters
	ros-indigo/ecl_threads
	ros-indigo/ecl_time
	ros-indigo/ecl_utilities
	ros-indigo/mm_core_msgs
	ros-indigo/mm_messages
	ros-indigo/nanomsg
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
