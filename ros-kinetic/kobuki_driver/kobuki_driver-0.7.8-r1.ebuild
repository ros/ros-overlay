# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'C++ driver library for Kobuki:
	Pure C++ driver library for Kobuki. This is f'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki_core-release/archive/release/kinetic/kobuki_driver/0.7.8-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ecl_command_line
	ros-kinetic/ecl_converters
	ros-kinetic/ecl_devices
	ros-kinetic/ecl_geometry
	ros-kinetic/ecl_mobile_robot
	ros-kinetic/ecl_sigslots
	ros-kinetic/ecl_time
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/ecl_build
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

