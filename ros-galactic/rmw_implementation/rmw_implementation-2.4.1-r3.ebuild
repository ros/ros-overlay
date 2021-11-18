# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The decision which ROS middleware implementation should be used for C++."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/2.4.1-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/rcpputils
	ros-galactic/rcutils
	ros-galactic/rmw_implementation_cmake
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/performance_test_fixture )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/rmw
	ros-galactic/rmw_connextdds
	ros-galactic/rmw_cyclonedds_cpp
	ros-galactic/rmw_fastrtps_cpp
	ros-galactic/rmw_fastrtps_dynamic_cpp
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
