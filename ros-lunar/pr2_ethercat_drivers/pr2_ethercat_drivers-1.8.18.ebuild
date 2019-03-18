# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This stack contains drivers for the ethercat system and the peripherals\
  [...]"
HOMEPAGE="http://ros.org/wiki/pr2_ethercat_drivers"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/lunar/${PN}/1.8.18-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="( BSD GPL-1 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/ethercat_hardware
	ros-lunar/fingertip_pressure
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
