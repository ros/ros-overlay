# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Hardware Interface and controllers for dynamixel motors"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/OUXT-Polaris/${PN}-release/archive/release/foxy/${PN}/0.0.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/controller_interface
	ros-foxy/diagnostic_msgs
	ros-foxy/diagnostic_updater
	ros-foxy/dynamixel_sdk
	ros-foxy/hardware_interface
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/realtime_tools
	ros-foxy/robot_state_publisher
	ros-foxy/ros2_control
	ros-foxy/xacro
	test? ( ros-foxy/ament_cmake_clang_format )
	test? ( ros-foxy/ament_cmake_copyright )
	test? ( ros-foxy/ament_cmake_flake8 )
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_cmake_lint_cmake )
	test? ( ros-foxy/ament_cmake_pep257 )
	test? ( ros-foxy/ament_cmake_xmllint )
	test? ( ros-foxy/ament_lint_auto )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
