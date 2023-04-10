# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="The ROS client library in C."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/4.0.2-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rcl
	ros-humble/rcl_action
	ros-humble/rcutils
	ros-humble/rosidl_generator_c
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_cmake_pytest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/example_interfaces )
	test? ( ros-humble/launch_testing )
	test? ( ros-humble/osrf_testing_tools_cpp )
	test? ( ros-humble/rclcpp )
	test? ( ros-humble/rclcpp_action )
	test? ( ros-humble/std_msgs )
	test? ( ros-humble/test_msgs )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
	ros-humble/rosidl_typesupport_c
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
