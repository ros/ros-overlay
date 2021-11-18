# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Parse a YAML parameter file and populate the C data structure."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rcl-release/archive/release/galactic/${PN}/3.1.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/libyaml_vendor
	ros-galactic/rmw
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/mimick_vendor )
	test? ( ros-galactic/osrf_testing_tools_cpp )
	test? ( ros-galactic/performance_test_fixture )
	test? ( ros-galactic/rcpputils )
	dev-libs/libyaml
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
	ros-galactic/rcutils
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
