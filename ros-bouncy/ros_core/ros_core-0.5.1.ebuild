# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package to aggregate the packages required to use publish / subscribe, se[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/bouncy/${PN}/0.5.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-bouncy/ament_cmake
	ros-bouncy/ament_cmake_auto
	ros-bouncy/ament_cmake_gmock
	ros-bouncy/ament_cmake_gtest
	ros-bouncy/ament_cmake_pytest
	ros-bouncy/ament_cmake_ros
	ros-bouncy/ament_index_cpp
	ros-bouncy/ament_index_python
	ros-bouncy/ament_lint_auto
	ros-bouncy/ament_lint_common
	ros-bouncy/class_loader
	ros-bouncy/common_interfaces
	ros-bouncy/pluginlib
	ros-bouncy/rcl_lifecycle
	ros-bouncy/rclcpp
	ros-bouncy/rclcpp_lifecycle
	ros-bouncy/rclpy
	ros-bouncy/ros2launch
	ros-bouncy/ros2lifecycle
	ros-bouncy/ros2msg
	ros-bouncy/ros2node
	ros-bouncy/ros2param
	ros-bouncy/ros2pkg
	ros-bouncy/ros2run
	ros-bouncy/ros2service
	ros-bouncy/ros2srv
	ros-bouncy/ros2topic
	ros-bouncy/ros_environment
	ros-bouncy/rosidl_default_generators
	ros-bouncy/rosidl_default_runtime
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
