# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Pure C++ driver library for Kobuki."
HOMEPAGE="https://kobuki.readthedocs.io/en/release-1.0.x/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/1.4.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ecl_command_line
	ros-foxy/ecl_config
	ros-foxy/ecl_console
	ros-foxy/ecl_converters
	ros-foxy/ecl_devices
	ros-foxy/ecl_geometry
	ros-foxy/ecl_mobile_robot
	ros-foxy/ecl_sigslots
	ros-foxy/ecl_threads
	ros-foxy/ecl_time
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
	ros-foxy/ecl_build
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
