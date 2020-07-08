# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package to aggregate the packages required to use publish / subscribe, se[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/foxy/${PN}/0.9.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ament_cmake
	ros-foxy/ament_cmake_auto
	ros-foxy/ament_cmake_gmock
	ros-foxy/ament_cmake_gtest
	ros-foxy/ament_cmake_pytest
	ros-foxy/ament_cmake_ros
	ros-foxy/ament_index_cpp
	ros-foxy/ament_index_python
	ros-foxy/ament_lint_auto
	ros-foxy/ament_lint_common
	ros-foxy/class_loader
	ros-foxy/common_interfaces
	ros-foxy/launch
	ros-foxy/launch_ros
	ros-foxy/launch_testing
	ros-foxy/launch_testing_ament_cmake
	ros-foxy/launch_testing_ros
	ros-foxy/launch_xml
	ros-foxy/launch_yaml
	ros-foxy/pluginlib
	ros-foxy/rcl_lifecycle
	ros-foxy/rclcpp
	ros-foxy/rclcpp_lifecycle
	ros-foxy/rclpy
	ros-foxy/ros2action
	ros-foxy/ros2component
	ros-foxy/ros2doctor
	ros-foxy/ros2interface
	ros-foxy/ros2launch
	ros-foxy/ros2lifecycle
	ros-foxy/ros2multicast
	ros-foxy/ros2node
	ros-foxy/ros2param
	ros-foxy/ros2pkg
	ros-foxy/ros2run
	ros-foxy/ros2service
	ros-foxy/ros2topic
	ros-foxy/ros_environment
	ros-foxy/rosidl_default_generators
	ros-foxy/rosidl_default_runtime
	ros-foxy/sros2
	ros-foxy/sros2_cmake
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
