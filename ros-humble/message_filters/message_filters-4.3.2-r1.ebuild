# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="A set of ROS2 message filters which take in messages and may output those m[...]"
HOMEPAGE="https://github.com/intel/ros2_message_filters"
SRC_URI="https://github.com/ros2-gbp/ros2_${PN}-release/archive/release/humble/${PN}/4.3.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/builtin_interfaces
	ros-humble/rclcpp
	ros-humble/rclpy
	ros-humble/rcutils
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_cmake_pytest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/rclcpp_lifecycle )
	test? ( ros-humble/sensor_msgs )
	test? ( ros-humble/std_msgs )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_python
	ros-humble/ament_cmake_ros
	ros-humble/python_cmake_module
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
