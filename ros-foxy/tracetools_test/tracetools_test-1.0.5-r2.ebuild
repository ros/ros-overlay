# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Testing utilities and tests for the tracetools package."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2_tracing-release/archive/release/foxy/${PN}/1.0.5-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/rclcpp
	ros-foxy/std_msgs
	ros-foxy/std_srvs
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_cmake_mypy )
	test? ( ros-foxy/ament_cmake_pytest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/launch_ros )
	test? ( ros-foxy/tracetools )
	test? ( ros-foxy/tracetools_launch )
	test? ( ros-foxy/tracetools_read )
	test? ( dev-python/pytest )
	test? ( dev-python/pytest-cov )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
