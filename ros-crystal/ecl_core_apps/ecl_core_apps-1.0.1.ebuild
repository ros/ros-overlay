# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This includes a suite of programs demo\'ing various aspects of the\
	 ec[...]"
HOMEPAGE="http://wiki.ros.org/ecl_core_apps"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/${PN}/1.0.1-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/ecl_build
	ros-crystal/ecl_command_line
	ros-crystal/ecl_config
	ros-crystal/ecl_containers
	ros-crystal/ecl_converters
	ros-crystal/ecl_devices
	ros-crystal/ecl_errors
	ros-crystal/ecl_exceptions
	ros-crystal/ecl_formatters
	ros-crystal/ecl_geometry
	ros-crystal/ecl_ipc
	ros-crystal/ecl_license
	ros-crystal/ecl_linear_algebra
	ros-crystal/ecl_sigslots
	ros-crystal/ecl_streams
	ros-crystal/ecl_threads
	ros-crystal/ecl_time_lite
	ros-crystal/ecl_type_traits
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
