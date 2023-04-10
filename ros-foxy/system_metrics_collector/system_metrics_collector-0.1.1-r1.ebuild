# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Node and aggregation utilities to measure and publish system metrics."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-tooling/${PN}-release/archive/release/foxy/${PN}/0.1.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/demo_nodes_cpp
	ros-foxy/libstatistics_collector
	ros-foxy/message_filters
	ros-foxy/rcl
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/rclcpp_lifecycle
	ros-foxy/rcpputils
	ros-foxy/rcutils
	ros-foxy/rosidl_default_runtime
	ros-foxy/statistics_msgs
	ros-foxy/std_msgs
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/class_loader )
	test? ( ros-foxy/lifecycle_msgs )
	test? ( ros-foxy/rclpy )
	test? ( ros-foxy/ros2launch )
	test? ( ros-foxy/ros2lifecycle )
	test? ( ros-foxy/ros2topic )
	test? ( retrying )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
