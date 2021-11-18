# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A package to aggregate the packages required to use publish / subscribe, se[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/galactic/${PN}/0.9.3-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/ament_cmake
	ros-galactic/ament_cmake_auto
	ros-galactic/ament_cmake_gmock
	ros-galactic/ament_cmake_gtest
	ros-galactic/ament_cmake_pytest
	ros-galactic/ament_cmake_ros
	ros-galactic/ament_index_cpp
	ros-galactic/ament_index_python
	ros-galactic/ament_lint_auto
	ros-galactic/ament_lint_common
	ros-galactic/class_loader
	ros-galactic/common_interfaces
	ros-galactic/launch
	ros-galactic/launch_ros
	ros-galactic/launch_testing
	ros-galactic/launch_testing_ament_cmake
	ros-galactic/launch_testing_ros
	ros-galactic/launch_xml
	ros-galactic/launch_yaml
	ros-galactic/pluginlib
	ros-galactic/rcl_lifecycle
	ros-galactic/rclcpp
	ros-galactic/rclcpp_lifecycle
	ros-galactic/rclpy
	ros-galactic/ros2cli_common_extensions
	ros-galactic/ros2launch
	ros-galactic/ros_environment
	ros-galactic/rosidl_default_generators
	ros-galactic/rosidl_default_runtime
	ros-galactic/sros2
	ros-galactic/sros2_cmake
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
