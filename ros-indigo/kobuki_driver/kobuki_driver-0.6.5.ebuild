# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="C driver library for Kobuki:	Pure C driver library for Kobuki This is f"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki_core-release/archive/release/indigo/kobuki_driver/0.6.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ecl_command_line
	ros-indigo/ecl_converters
	ros-indigo/ecl_devices
	ros-indigo/ecl_geometry
	ros-indigo/ecl_mobile_robot
	ros-indigo/ecl_sigslots
	ros-indigo/ecl_time
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/ecl_build
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

