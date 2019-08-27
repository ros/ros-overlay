# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="These are lightweight text streaming classes that connect to standardised\
[...]"
HOMEPAGE="http://wiki.ros.org/ecl_streams"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/${PN}/1.0.4-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/ecl_concepts
	ros-dashing/ecl_converters
	ros-dashing/ecl_devices
	ros-dashing/ecl_errors
	ros-dashing/ecl_license
	ros-dashing/ecl_time
	ros-dashing/ecl_type_traits
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake_ros
	ros-dashing/ecl_build
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
