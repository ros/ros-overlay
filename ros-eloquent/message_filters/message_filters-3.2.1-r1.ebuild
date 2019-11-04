# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A set of ROS2 message filters which take in messages and may output those m[...]"
HOMEPAGE="https://github.com/intel/ros2_message_filters"
SRC_URI="https://github.com/ros2-gbp/ros2_${PN}-release/archive/release/eloquent/${PN}/3.2.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_cmake_pytest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/sensor_msgs )
	test? ( ros-eloquent/std_msgs )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_python
	ros-eloquent/ament_cmake_ros
	ros-eloquent/builtin_interfaces
	ros-eloquent/python_cmake_module
	ros-eloquent/rclcpp
	ros-eloquent/rclpy
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
