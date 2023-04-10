# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="gazebo_ros2_control"
HOMEPAGE="http://ros.org/wiki/gazebo_ros_control"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/0.1.1-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="( BSD Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/angles
	ros-foxy/controller_manager
	ros-foxy/gazebo_dev
	ros-foxy/gazebo_ros
	ros-foxy/hardware_interface
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/std_msgs
	ros-foxy/yaml_cpp_vendor
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
