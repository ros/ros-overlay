# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Implementation of the Webots - ROS 2 interface"
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/foxy/${PN}/2023.0.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rclpy
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	ros-foxy/tinyxml2_vendor
	ros-foxy/vision_msgs
	ros-foxy/webots_ros2_importer
	ros-foxy/webots_ros2_msgs
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/ament_cmake_python
	ros-foxy/python_cmake_module
	ros-foxy/ros_environment
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
