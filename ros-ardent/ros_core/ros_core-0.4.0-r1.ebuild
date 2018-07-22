# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package to aggregate the packages required to use publish / subscribe, se[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/ardent/${PN}/0.4.0-1.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-ardent/ament_cmake
	ros-ardent/ament_cmake_auto
	ros-ardent/ament_cmake_gmock
	ros-ardent/ament_cmake_gtest
	ros-ardent/ament_cmake_pytest
	ros-ardent/ament_cmake_ros
	ros-ardent/ament_index_cpp
	ros-ardent/ament_index_python
	ros-ardent/ament_lint_auto
	ros-ardent/ament_lint_common
	ros-ardent/class_loader
	ros-ardent/common_interfaces
	ros-ardent/pluginlib
	ros-ardent/rcl_lifecycle
	ros-ardent/rclcpp
	ros-ardent/rclcpp_lifecycle
	ros-ardent/rclpy
	ros-ardent/ros2msg
	ros-ardent/ros2node
	ros-ardent/ros2pkg
	ros-ardent/ros2run
	ros-ardent/ros2service
	ros-ardent/ros2srv
	ros-ardent/ros2topic
	ros-ardent/ros_environment
	ros-ardent/rosidl_default_generators
	ros-ardent/rosidl_default_runtime
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
