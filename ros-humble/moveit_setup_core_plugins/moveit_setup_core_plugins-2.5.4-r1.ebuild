# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Core \(meta\) plugins for MoveIt Setup Assistant"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/humble/${PN}/2.5.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_cpp
	ros-humble/moveit_ros_visualization
	ros-humble/moveit_setup_framework
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/srdfdom
	ros-humble/urdf
	test? ( ros-humble/ament_clang_format )
	test? ( ros-humble/ament_cmake_lint_cmake )
	test? ( ros-humble/ament_cmake_xmllint )
	test? ( ros-humble/ament_lint_auto )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
