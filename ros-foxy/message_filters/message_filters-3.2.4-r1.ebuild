# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A set of ROS2 message filters which take in messages and may output those m[...]"
HOMEPAGE="https://github.com/intel/ros2_message_filters"
SRC_URI="https://github.com/ros2-gbp/ros2_${PN}-release/archive/release/foxy/${PN}/3.2.4-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_cmake_pytest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/sensor_msgs )
	test? ( ros-foxy/std_msgs )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_python
	ros-foxy/ament_cmake_ros
	ros-foxy/builtin_interfaces
	ros-foxy/python_cmake_module
	ros-foxy/rclcpp
	ros-foxy/rclpy
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
