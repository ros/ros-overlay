# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Demonstrates ROS 2\'s realtime capabilities with a simulated inverted pendulum."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/demos-release/archive/release/eloquent/${PN}/0.8.4-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/pendulum_msgs
	ros-eloquent/rclcpp
	ros-eloquent/rttest
	ros-eloquent/tlsf_cpp
	test? ( ros-eloquent/ament_cmake_pytest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/launch )
	test? ( ros-eloquent/launch_testing )
	test? ( ros-eloquent/launch_testing_ament_cmake )
	test? ( ros-eloquent/launch_testing_ros )
	test? ( ros-eloquent/rmw_implementation_cmake )
	test? ( ros-eloquent/ros2run )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
