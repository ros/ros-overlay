# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This includes a suite of programs demo\'ing various aspects of the\
	 ec[...]"
HOMEPAGE="http://wiki.ros.org/ecl_core_apps"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/${PN}/1.0.4-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/ecl_build
	ros-eloquent/ecl_command_line
	ros-eloquent/ecl_config
	ros-eloquent/ecl_containers
	ros-eloquent/ecl_converters
	ros-eloquent/ecl_devices
	ros-eloquent/ecl_errors
	ros-eloquent/ecl_exceptions
	ros-eloquent/ecl_formatters
	ros-eloquent/ecl_geometry
	ros-eloquent/ecl_ipc
	ros-eloquent/ecl_license
	ros-eloquent/ecl_linear_algebra
	ros-eloquent/ecl_sigslots
	ros-eloquent/ecl_streams
	ros-eloquent/ecl_threads
	ros-eloquent/ecl_time_lite
	ros-eloquent/ecl_type_traits
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
