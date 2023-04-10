# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Implementation of the Webots - ROS 2 interface"
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/${PN}/2023.0.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rclpy
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	ros-humble/tinyxml2_vendor
	ros-humble/vision_msgs
	ros-humble/webots_ros2_importer
	ros-humble/webots_ros2_msgs
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_python
	ros-humble/python_cmake_module
	ros-humble/ros_environment
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
