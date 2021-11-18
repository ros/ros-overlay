# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="gazebo_ros2_control"
HOMEPAGE="http://ros.org/wiki/gazebo_ros_control"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/0.0.4-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="( BSD Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/angles
	ros-galactic/controller_manager
	ros-galactic/gazebo_dev
	ros-galactic/gazebo_ros
	ros-galactic/hardware_interface
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/std_msgs
	ros-galactic/urdf
	ros-galactic/yaml_cpp_vendor
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
