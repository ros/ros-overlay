# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Bridges micro-ROS diagnostic messages and vanilla ROS 2 diagnostic messages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/galactic/${PN}/0.2.0-4.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/diagnostic_msgs
	ros-galactic/micro_ros_diagnostic_msgs
	ros-galactic/rclcpp
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/diagnostic_msgs )
	test? ( ros-galactic/micro_ros_diagnostic_msgs )
	test? ( ros-galactic/osrf_testing_tools_cpp )
	test? ( ros-galactic/ros_environment )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
