# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Provides service calls for getting ros meta-information, like list of\
	[...]"
HOMEPAGE="http://ros.org/wiki/rosapi"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/dashing/${PN}/1.0.2-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/builtin_interfaces
	ros-dashing/rcl_interfaces
	ros-dashing/rclpy
	ros-dashing/ros2node
	ros-dashing/ros2param
	ros-dashing/ros2pkg
	ros-dashing/ros2service
	ros-dashing/ros2topic
	ros-dashing/rosbridge_library
	ros-dashing/rosidl_default_runtime
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake_ros
	ros-dashing/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
