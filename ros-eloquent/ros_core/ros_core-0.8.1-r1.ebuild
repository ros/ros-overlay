# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package to aggregate the packages required to use publish / subscribe, se[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/eloquent/${PN}/0.8.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/ament_cmake
	ros-eloquent/ament_cmake_auto
	ros-eloquent/ament_cmake_gmock
	ros-eloquent/ament_cmake_gtest
	ros-eloquent/ament_cmake_pytest
	ros-eloquent/ament_cmake_ros
	ros-eloquent/ament_index_cpp
	ros-eloquent/ament_index_python
	ros-eloquent/ament_lint_auto
	ros-eloquent/ament_lint_common
	ros-eloquent/class_loader
	ros-eloquent/common_interfaces
	ros-eloquent/pluginlib
	ros-eloquent/rcl_lifecycle
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_lifecycle
	ros-eloquent/rclpy
	ros-eloquent/ros2action
	ros-eloquent/ros2component
	ros-eloquent/ros2launch
	ros-eloquent/ros2lifecycle
	ros-eloquent/ros2msg
	ros-eloquent/ros2multicast
	ros-eloquent/ros2node
	ros-eloquent/ros2param
	ros-eloquent/ros2pkg
	ros-eloquent/ros2run
	ros-eloquent/ros2service
	ros-eloquent/ros2srv
	ros-eloquent/ros2topic
	ros-eloquent/ros_environment
	ros-eloquent/rosidl_default_generators
	ros-eloquent/rosidl_default_runtime
	ros-eloquent/sros2
	ros-eloquent/sros2_cmake
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
