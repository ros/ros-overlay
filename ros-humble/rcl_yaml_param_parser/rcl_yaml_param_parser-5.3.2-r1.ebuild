# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Parse a YAML parameter file and populate the C data structure."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rcl-release/archive/release/humble/${PN}/5.3.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/libyaml_vendor
	ros-humble/rmw
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/mimick_vendor )
	test? ( ros-humble/osrf_testing_tools_cpp )
	test? ( ros-humble/performance_test_fixture )
	test? ( ros-humble/rcpputils )
	dev-libs/libyaml
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
	ros-humble/rcutils
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
