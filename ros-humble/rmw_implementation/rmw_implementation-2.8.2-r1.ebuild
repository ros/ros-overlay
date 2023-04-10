# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Proxy implementation of the ROS 2 Middleware Interface."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.8.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_cpp
	ros-humble/rcpputils
	ros-humble/rcutils
	ros-humble/rmw_implementation_cmake
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/performance_test_fixture )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/rmw
	ros-humble/rmw_connextdds
	ros-humble/rmw_cyclonedds_cpp
	ros-humble/rmw_fastrtps_cpp
	ros-humble/rmw_fastrtps_dynamic_cpp
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
