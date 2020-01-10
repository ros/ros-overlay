# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="C++ driver library for Kobuki:\
	Pure C++ driver library for Kobuki. Thi[...]"
HOMEPAGE="http://ros.org/wiki/kobuki_driver"
SRC_URI="https://github.com/yujinrobot-release/kobuki_core-release/archive/release/eloquent/${PN}/0.8.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/ecl_command_line
	ros-eloquent/ecl_config
	ros-eloquent/ecl_converters
	ros-eloquent/ecl_devices
	ros-eloquent/ecl_geometry
	ros-eloquent/ecl_mobile_robot
	ros-eloquent/ecl_sigslots
	ros-eloquent/ecl_threads
	ros-eloquent/ecl_time
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
	ros-eloquent/ecl_build
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
