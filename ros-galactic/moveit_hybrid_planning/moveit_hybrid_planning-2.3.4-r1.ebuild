# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Hybrid planning components of MoveIt 2"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/galactic/${PN}/2.3.4-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_cpp
	ros-galactic/controller_manager
	ros-galactic/moveit_core
	ros-galactic/moveit_msgs
	ros-galactic/moveit_resources_panda_moveit_config
	ros-galactic/moveit_ros_planning
	ros-galactic/moveit_ros_planning_interface
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/rclcpp_action
	ros-galactic/rclcpp_components
	ros-galactic/robot_state_publisher
	ros-galactic/rviz2
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	ros-galactic/tf2_ros
	ros-galactic/trajectory_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/moveit_planners_ompl )
	test? ( ros-galactic/ros_testing )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/moveit_common
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
