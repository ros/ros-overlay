# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This includes a suite of programs demo\'ing various aspects of the\
	 ec[...]"
HOMEPAGE="http://wiki.ros.org/ecl_core_apps"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/galactic/${PN}/1.2.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/ecl_build
	ros-galactic/ecl_command_line
	ros-galactic/ecl_config
	ros-galactic/ecl_containers
	ros-galactic/ecl_converters
	ros-galactic/ecl_devices
	ros-galactic/ecl_errors
	ros-galactic/ecl_exceptions
	ros-galactic/ecl_formatters
	ros-galactic/ecl_geometry
	ros-galactic/ecl_ipc
	ros-galactic/ecl_license
	ros-galactic/ecl_linear_algebra
	ros-galactic/ecl_sigslots
	ros-galactic/ecl_streams
	ros-galactic/ecl_threads
	ros-galactic/ecl_time_lite
	ros-galactic/ecl_type_traits
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
