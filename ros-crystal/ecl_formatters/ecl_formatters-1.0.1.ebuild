# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The formatters here simply format various input types to a specified\
   te[...]"
HOMEPAGE="http://wiki.ros.org/ecl_formatters"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/${PN}/1.0.1-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/ecl_config
	ros-crystal/ecl_converters
	ros-crystal/ecl_exceptions
	ros-crystal/ecl_license
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_ros
	ros-crystal/ecl_build
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
