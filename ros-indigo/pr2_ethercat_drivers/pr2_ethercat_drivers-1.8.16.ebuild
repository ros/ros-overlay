# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack contains drivers for the ethercat system and the peripherals\
  [...]"
HOMEPAGE="http://ros.org/wiki/pr2_ethercat_drivers"
SRC_URI="https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/indigo/pr2_ethercat_drivers/1.8.16-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( BSD GPL-1 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ethercat_hardware
	ros-indigo/fingertip_pressure
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
