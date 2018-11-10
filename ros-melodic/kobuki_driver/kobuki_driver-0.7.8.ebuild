# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="C++ driver library for Kobuki:\
	Pure C++ driver library for Kobuki. Thi[...]"
HOMEPAGE="http://ros.org/wiki/kobuki_driver"
SRC_URI="https://github.com/yujinrobot-release/kobuki_core-release/archive/release/melodic/${PN}/0.7.8-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ecl_command_line
	ros-melodic/ecl_converters
	ros-melodic/ecl_devices
	ros-melodic/ecl_geometry
	ros-melodic/ecl_mobile_robot
	ros-melodic/ecl_sigslots
	ros-melodic/ecl_time
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/ecl_build
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
