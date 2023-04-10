# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS2 examples using ROBOTIS DYNAMIXEL SDK"
HOMEPAGE="http://wiki.ros.org/dynamixel_sdk"
SRC_URI="https://github.com/robotis-ros2-release/dynamixel_sdk-release/archive/release/foxy/${PN}/3.7.40-4.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/dynamixel_sdk
	ros-foxy/dynamixel_sdk_custom_interfaces
	ros-foxy/rclcpp
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
