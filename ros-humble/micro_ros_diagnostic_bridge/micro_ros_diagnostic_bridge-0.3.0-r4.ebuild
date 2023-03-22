# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Translates micro-ROS diagnostic messages to vanilla ROS 2 diagnostic messages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/humble/${PN}/0.3.0-4.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/diagnostic_msgs
	ros-humble/micro_ros_diagnostic_msgs
	ros-humble/rclcpp
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/diagnostic_msgs )
	test? ( ros-humble/micro_ros_diagnostic_msgs )
	test? ( ros-humble/osrf_testing_tools_cpp )
	test? ( ros-humble/ros_environment )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
