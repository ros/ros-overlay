# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This includes a suite of programs demo\'ing various aspects of the\
	 ec[...]"
HOMEPAGE="http://wiki.ros.org/ecl_core_apps"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/${PN}/0.62.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/ecl_build
	ros-noetic/ecl_command_line
	ros-noetic/ecl_config
	ros-noetic/ecl_containers
	ros-noetic/ecl_converters
	ros-noetic/ecl_devices
	ros-noetic/ecl_errors
	ros-noetic/ecl_exceptions
	ros-noetic/ecl_formatters
	ros-noetic/ecl_geometry
	ros-noetic/ecl_ipc
	ros-noetic/ecl_license
	ros-noetic/ecl_linear_algebra
	ros-noetic/ecl_sigslots
	ros-noetic/ecl_streams
	ros-noetic/ecl_threads
	ros-noetic/ecl_time_lite
	ros-noetic/ecl_type_traits
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
