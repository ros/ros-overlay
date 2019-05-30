# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="C++ stdlib-compatible wrapper around tlsf allocator and ROS2 examples"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/realtime_support-release/archive/release/dashing/${PN}/0.7.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="LGPL-2.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/ament_cmake
	ros-dashing/rclcpp
	ros-dashing/rmw
	ros-dashing/std_msgs
	ros-dashing/tlsf
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/rmw_implementation_cmake )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
