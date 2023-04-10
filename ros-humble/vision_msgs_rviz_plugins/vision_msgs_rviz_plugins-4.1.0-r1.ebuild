# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="RVIZ2 plugins for visualizing vision_msgs"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/vision_msgs-release/archive/release/humble/${PN}/4.1.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rclpy
	ros-humble/rviz2
	ros-humble/rviz_common
	ros-humble/rviz_default_plugins
	ros-humble/rviz_rendering
	ros-humble/vision_msgs
	ros-humble/yaml_cpp_vendor
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
