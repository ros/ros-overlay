# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Planning components of MoveIt that use ROS"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/foxy/${PN}/2.2.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_index_cpp
	ros-foxy/message_filters
	ros-foxy/moveit_core
	ros-foxy/moveit_msgs
	ros-foxy/moveit_ros_occupancy_map_monitor
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rclcpp_action
	ros-foxy/srdfdom
	ros-foxy/tf2
	ros-foxy/tf2_eigen
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_msgs
	ros-foxy/tf2_ros
	ros-foxy/urdf
	test? ( ros-foxy/ament_cmake_gmock )
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/moveit_resources_panda_moveit_config )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/eigen3_cmake_module
	ros-foxy/moveit_common
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
