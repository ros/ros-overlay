# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The formatters here simply format various input types to a specified\
   te[...]"
HOMEPAGE="http://wiki.ros.org/ecl_formatters"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/foxy/${PN}/1.2.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ecl_config
	ros-foxy/ecl_converters
	ros-foxy/ecl_exceptions
	ros-foxy/ecl_license
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
	ros-foxy/ecl_build
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
