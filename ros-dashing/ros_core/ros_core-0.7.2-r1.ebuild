# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package to aggregate the packages required to use publish / subscribe, se[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/dashing/${PN}/0.7.2-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/ament_cmake
	ros-dashing/ament_cmake_auto
	ros-dashing/ament_cmake_gmock
	ros-dashing/ament_cmake_gtest
	ros-dashing/ament_cmake_pytest
	ros-dashing/ament_cmake_ros
	ros-dashing/ament_index_cpp
	ros-dashing/ament_index_python
	ros-dashing/ament_lint_auto
	ros-dashing/ament_lint_common
	ros-dashing/class_loader
	ros-dashing/common_interfaces
	ros-dashing/pluginlib
	ros-dashing/rcl_lifecycle
	ros-dashing/rclcpp
	ros-dashing/rclcpp_lifecycle
	ros-dashing/rclpy
	ros-dashing/ros2action
	ros-dashing/ros2component
	ros-dashing/ros2launch
	ros-dashing/ros2lifecycle
	ros-dashing/ros2msg
	ros-dashing/ros2multicast
	ros-dashing/ros2node
	ros-dashing/ros2param
	ros-dashing/ros2pkg
	ros-dashing/ros2run
	ros-dashing/ros2service
	ros-dashing/ros2srv
	ros-dashing/ros2topic
	ros-dashing/ros_environment
	ros-dashing/rosidl_default_generators
	ros-dashing/rosidl_default_runtime
	ros-dashing/sros2
	ros-dashing/sros2_cmake
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
