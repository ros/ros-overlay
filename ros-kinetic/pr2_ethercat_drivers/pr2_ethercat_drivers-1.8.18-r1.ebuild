# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack contains drivers for the ethercat system and the peripherals\
  [...]"
HOMEPAGE="http://ros.org/wiki/pr2_ethercat_drivers"
SRC_URI="https://github.com/PR2-prime/${PN}-release/archive/release/kinetic/${PN}/1.8.18-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( BSD GPL-1 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ethercat_hardware
	ros-kinetic/fingertip_pressure
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
