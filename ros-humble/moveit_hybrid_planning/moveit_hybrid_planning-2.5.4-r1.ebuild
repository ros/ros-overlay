# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Hybrid planning components of MoveIt 2"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/humble/${PN}/2.5.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_cpp
	ros-humble/controller_manager
	ros-humble/moveit_common
	ros-humble/moveit_core
	ros-humble/moveit_msgs
	ros-humble/moveit_resources_panda_moveit_config
	ros-humble/moveit_ros_planning
	ros-humble/moveit_ros_planning_interface
	ros-humble/pluginlib
	ros-humble/position_controllers
	ros-humble/rclcpp
	ros-humble/rclcpp_action
	ros-humble/rclcpp_components
	ros-humble/robot_state_publisher
	ros-humble/rviz2
	ros-humble/std_msgs
	ros-humble/std_srvs
	ros-humble/tf2_ros
	ros-humble/trajectory_msgs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/moveit_planners_ompl )
	test? ( ros-humble/ros_testing )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
