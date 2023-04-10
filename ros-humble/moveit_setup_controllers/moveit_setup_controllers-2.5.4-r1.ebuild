# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="MoveIt Setup Steps for ROS 2 Control"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/humble/${PN}/2.5.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_cpp
	ros-humble/moveit_setup_framework
	ros-humble/pluginlib
	ros-humble/rclcpp
	test? ( ros-humble/ament_clang_format )
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_cmake_lint_cmake )
	test? ( ros-humble/ament_cmake_xmllint )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/moveit_resources_fanuc_moveit_config )
	test? ( ros-humble/moveit_resources_panda_moveit_config )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
