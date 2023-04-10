# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Components of MoveIt that offer simpler interfaces to planning and execution"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/foxy/${PN}/2.2.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/moveit_core
	ros-foxy/moveit_msgs
	ros-foxy/moveit_ros_move_group
	ros-foxy/moveit_ros_planning
	ros-foxy/moveit_ros_warehouse
	ros-foxy/rclcpp
	ros-foxy/rclcpp_action
	ros-foxy/rclpy
	ros-foxy/tf2
	ros-foxy/tf2_eigen
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/moveit_planners_ompl )
	test? ( ros-foxy/moveit_resources_fanuc_moveit_config )
	test? ( ros-foxy/moveit_resources_panda_moveit_config )
	test? ( ros-foxy/moveit_simple_controller_manager )
	test? ( ros-foxy/ros_testing )
	test? ( ros-foxy/rviz2 )
	dev-lang/python
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/eigen3_cmake_module
	ros-foxy/moveit_common
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
