# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A set of ROS2 message filters which take in messages and may output those m[...]"
HOMEPAGE="https://github.com/intel/ros2_message_filters"
SRC_URI="https://github.com/ros2-gbp/ros2_${PN}-release/archive/release/crystal/${PN}/3.0.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-crystal/ament_cmake_gtest )
	test? ( ros-crystal/ament_cmake_pytest )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/sensor_msgs )
	test? ( ros-crystal/std_msgs )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_python
	ros-crystal/ament_cmake_ros
	ros-crystal/builtin_interfaces
	ros-crystal/rclcpp
	ros-crystal/rclpy
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
