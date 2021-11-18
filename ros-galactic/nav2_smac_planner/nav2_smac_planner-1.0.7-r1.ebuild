# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Smac global planning plugin: A*, Hybrid-A*, State Lattice"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/${PN}/1.0.7-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/eigen3_cmake_module
	ros-galactic/geometry_msgs
	ros-galactic/nav2_common
	ros-galactic/nav2_core
	ros-galactic/nav2_costmap_2d
	ros-galactic/nav2_msgs
	ros-galactic/nav2_util
	ros-galactic/nav_msgs
	ros-galactic/ompl
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/rclcpp_action
	ros-galactic/rclcpp_lifecycle
	ros-galactic/tf2_ros
	ros-galactic/visualization_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_cmake_pytest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
