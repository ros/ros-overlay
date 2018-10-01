# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This includes a suite of programs demo\'ing various aspects of the\
	 ec[...]"
HOMEPAGE="http://wiki.ros.org/ecl_core_apps"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/bouncy/${PN}/1.0.0-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-bouncy/ecl_build
	ros-bouncy/ecl_command_line
	ros-bouncy/ecl_config
	ros-bouncy/ecl_containers
	ros-bouncy/ecl_converters
	ros-bouncy/ecl_devices
	ros-bouncy/ecl_errors
	ros-bouncy/ecl_exceptions
	ros-bouncy/ecl_formatters
	ros-bouncy/ecl_geometry
	ros-bouncy/ecl_ipc
	ros-bouncy/ecl_license
	ros-bouncy/ecl_linear_algebra
	ros-bouncy/ecl_sigslots
	ros-bouncy/ecl_streams
	ros-bouncy/ecl_threads
	ros-bouncy/ecl_time_lite
	ros-bouncy/ecl_type_traits
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
