# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A set of ROS2 message filters which take in messages and may output those m[...]"
HOMEPAGE="https://github.com/intel/ros2_message_filters"
SRC_URI="https://github.com/ros2-gbp/ros2_${PN}-release/archive/release/dashing/${PN}/3.1.2-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_cmake_pytest )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/sensor_msgs )
	test? ( ros-dashing/std_msgs )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake_python
	ros-dashing/ament_cmake_ros
	ros-dashing/builtin_interfaces
	ros-dashing/python_cmake_module
	ros-dashing/rclcpp
	ros-dashing/rclpy
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
