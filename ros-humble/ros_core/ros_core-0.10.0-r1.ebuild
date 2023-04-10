# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="A package to aggregate the packages required to use publish / subscribe, se[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/humble/${PN}/0.10.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/ament_cmake
	ros-humble/ament_cmake_auto
	ros-humble/ament_cmake_gmock
	ros-humble/ament_cmake_gtest
	ros-humble/ament_cmake_pytest
	ros-humble/ament_cmake_ros
	ros-humble/ament_index_cpp
	ros-humble/ament_index_python
	ros-humble/ament_lint_auto
	ros-humble/ament_lint_common
	ros-humble/class_loader
	ros-humble/common_interfaces
	ros-humble/launch
	ros-humble/launch_ros
	ros-humble/launch_testing
	ros-humble/launch_testing_ament_cmake
	ros-humble/launch_testing_ros
	ros-humble/launch_xml
	ros-humble/launch_yaml
	ros-humble/pluginlib
	ros-humble/rcl_lifecycle
	ros-humble/rclcpp
	ros-humble/rclcpp_action
	ros-humble/rclcpp_lifecycle
	ros-humble/rclpy
	ros-humble/ros2cli_common_extensions
	ros-humble/ros2launch
	ros-humble/ros_environment
	ros-humble/rosidl_default_generators
	ros-humble/rosidl_default_runtime
	ros-humble/sros2
	ros-humble/sros2_cmake
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
