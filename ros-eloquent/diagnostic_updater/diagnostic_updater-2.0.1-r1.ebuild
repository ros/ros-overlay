# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="diagnostic_updater contains tools for easily updating diagnostics. it is co[...]"
HOMEPAGE="http://www.ros.org/wiki/diagnostic_updater"
SRC_URI="https://github.com/ros2-gbp/diagnostics-release/archive/release/eloquent/${PN}/2.0.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/diagnostic_msgs
	ros-eloquent/rclcpp
	ros-eloquent/rclpy
	ros-eloquent/std_msgs
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_cmake_pytest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/rclcpp_lifecycle )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
