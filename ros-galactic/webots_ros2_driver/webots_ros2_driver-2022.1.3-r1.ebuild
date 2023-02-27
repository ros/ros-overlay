# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Implementation of the Webots - ROS 2 interface"
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/${PN}/2022.1.3-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/geometry_msgs
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/rclpy
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/tf2_ros
	ros-galactic/tinyxml2_vendor
	ros-galactic/vision_msgs
	ros-galactic/webots_ros2_importer
	ros-galactic/webots_ros2_msgs
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/ament_cmake_python
	ros-galactic/python_cmake_module
	ros-galactic/ros_environment
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
