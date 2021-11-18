# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Testing utilities and tests for the tracetools package."
HOMEPAGE="https://index.ros.org/p/tracetools_test/"
SRC_URI="https://github.com/ros2-gbp/ros2_tracing-release/archive/release/galactic/${PN}/2.3.0-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/lifecycle_msgs
	ros-galactic/rclcpp
	ros-galactic/rclcpp_lifecycle
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_cmake_mypy )
	test? ( ros-galactic/ament_cmake_pytest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/launch_ros )
	test? ( ros-galactic/tracetools )
	test? ( ros-galactic/tracetools_launch )
	test? ( ros-galactic/tracetools_read )
	test? ( dev-python/pytest )
	test? ( dev-python/pytest-cov )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
