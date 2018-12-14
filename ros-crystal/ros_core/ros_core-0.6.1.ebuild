# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package to aggregate the packages required to use publish / subscribe, se[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/crystal/${PN}/0.6.1-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/ament_cmake
	ros-crystal/ament_cmake_auto
	ros-crystal/ament_cmake_gmock
	ros-crystal/ament_cmake_gtest
	ros-crystal/ament_cmake_pytest
	ros-crystal/ament_cmake_ros
	ros-crystal/ament_index_cpp
	ros-crystal/ament_index_python
	ros-crystal/ament_lint_auto
	ros-crystal/ament_lint_common
	ros-crystal/class_loader
	ros-crystal/common_interfaces
	ros-crystal/pluginlib
	ros-crystal/rcl_lifecycle
	ros-crystal/rclcpp
	ros-crystal/rclcpp_lifecycle
	ros-crystal/rclpy
	ros-crystal/ros2launch
	ros-crystal/ros2lifecycle
	ros-crystal/ros2msg
	ros-crystal/ros2multicast
	ros-crystal/ros2node
	ros-crystal/ros2param
	ros-crystal/ros2pkg
	ros-crystal/ros2run
	ros-crystal/ros2service
	ros-crystal/ros2srv
	ros-crystal/ros2topic
	ros-crystal/ros_environment
	ros-crystal/rosidl_default_generators
	ros-crystal/rosidl_default_runtime
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
