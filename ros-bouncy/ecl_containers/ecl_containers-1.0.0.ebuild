# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The containers included here are intended to extend the stl containers.\
  [...]"
HOMEPAGE="http://wiki.ros.org/ecl_containers"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/bouncy/${PN}/1.0.0-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/ecl_config
	ros-bouncy/ecl_converters
	ros-bouncy/ecl_errors
	ros-bouncy/ecl_exceptions
	ros-bouncy/ecl_formatters
	ros-bouncy/ecl_license
	ros-bouncy/ecl_mpl
	ros-bouncy/ecl_type_traits
	ros-bouncy/ecl_utilities
	test? ( ros-bouncy/ament_cmake_gtest )
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake_ros
	ros-bouncy/ecl_build
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
