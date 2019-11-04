# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="C API providing common interface to a shared library wrapping 3rd party log[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rcl_logging-release/archive/release/eloquent/${PN}/0.3.3-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/rcutils
	test? ( ros-eloquent/ament_cmake_gmock )
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_cmake_pytest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/launch_testing )
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
	dev-python/empy
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
