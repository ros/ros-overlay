# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Libraries and utilities for embedded and low-level linux development."
HOMEPAGE="http://www.ros.org/wiki/ecl_lite"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/crystal/${PN}/1.0.1-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/ecl_config
	ros-crystal/ecl_converters_lite
	ros-crystal/ecl_errors
	ros-crystal/ecl_io
	ros-crystal/ecl_sigslots_lite
	ros-crystal/ecl_time_lite
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
