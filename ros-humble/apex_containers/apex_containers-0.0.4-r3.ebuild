# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Containers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.0.4-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/foonathan_memory_vendor
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/apex_test_tools )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
