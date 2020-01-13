# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Template based exceptions - these are simple and practical\
	 and avoid [...]"
HOMEPAGE="http://wiki.ros.org/ecl_exceptions"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/${PN}/1.0.6-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/ecl_config
	ros-eloquent/ecl_errors
	ros-eloquent/ecl_license
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
	ros-eloquent/ecl_build
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
