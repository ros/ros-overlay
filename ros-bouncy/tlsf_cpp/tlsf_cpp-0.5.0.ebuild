# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="C++ stdlib-compatible wrapper around tlsf allocator and ROS2 examples"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/realtime_support-release/archive/release/bouncy/${PN}/0.5.0-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="LGPL-2.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/ament_cmake
	ros-bouncy/rclcpp
	ros-bouncy/rmw
	ros-bouncy/std_msgs
	ros-bouncy/tlsf
	test? ( ros-bouncy/ament_cmake_gtest )
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
	test? ( ros-bouncy/rmw_implementation_cmake )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
