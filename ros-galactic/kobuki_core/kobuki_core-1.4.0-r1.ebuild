# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Pure C++ driver library for Kobuki."
HOMEPAGE="https://kobuki.readthedocs.io/en/release-1.0.x/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.4.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/ecl_command_line
	ros-galactic/ecl_config
	ros-galactic/ecl_console
	ros-galactic/ecl_converters
	ros-galactic/ecl_devices
	ros-galactic/ecl_geometry
	ros-galactic/ecl_mobile_robot
	ros-galactic/ecl_sigslots
	ros-galactic/ecl_threads
	ros-galactic/ecl_time
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
	ros-galactic/ecl_build
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
