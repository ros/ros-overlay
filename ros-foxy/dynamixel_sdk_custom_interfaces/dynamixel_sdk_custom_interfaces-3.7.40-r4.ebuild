# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS2 custom interface examples using ROBOTIS DYNAMIXEL SDK"
HOMEPAGE="http://wiki.ros.org/dynamixel_sdk"
SRC_URI="https://github.com/robotis-ros2-release/dynamixel_sdk-release/archive/release/foxy/${PN}/3.7.40-4.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/rosidl_default_runtime
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
