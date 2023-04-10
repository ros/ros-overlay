# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Components of MoveIt that offer simpler interfaces to planning and execution"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/humble/${PN}/2.5.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/moveit_common
	ros-humble/moveit_core
	ros-humble/moveit_msgs
	ros-humble/moveit_ros_move_group
	ros-humble/moveit_ros_planning
	ros-humble/moveit_ros_warehouse
	ros-humble/rclcpp
	ros-humble/rclcpp_action
	ros-humble/rclpy
	ros-humble/tf2
	ros-humble/tf2_eigen
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/moveit_configs_utils )
	test? ( ros-humble/moveit_planners_ompl )
	test? ( ros-humble/moveit_resources_fanuc_moveit_config )
	test? ( ros-humble/moveit_resources_panda_moveit_config )
	test? ( ros-humble/moveit_simple_controller_manager )
	test? ( ros-humble/ros_testing )
	test? ( ros-humble/rviz2 )
	dev-lang/python
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/eigen3_cmake_module
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
