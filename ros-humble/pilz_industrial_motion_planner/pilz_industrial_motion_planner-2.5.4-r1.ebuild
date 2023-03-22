# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="MoveIt plugin to generate industrial trajectories PTP, LIN, CIRC and sequen[...]"
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
	ros-humble/moveit_ros_planning_interface
	ros-humble/orocos_kdl_vendor
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/tf2
	ros-humble/tf2_eigen
	ros-humble/tf2_eigen_kdl
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_kdl
	ros-humble/tf2_ros
	test? ( ros-humble/ament_cmake_gmock )
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/launch_param_builder )
	test? ( ros-humble/moveit_configs_utils )
	test? ( ros-humble/moveit_resources_panda_moveit_config )
	test? ( ros-humble/moveit_resources_prbt_moveit_config )
	test? ( ros-humble/moveit_resources_prbt_pg70_support )
	test? ( ros-humble/moveit_resources_prbt_support )
	test? ( ros-humble/pilz_industrial_motion_planner_testutils )
	test? ( ros-humble/ros_testing )
	test? ( dev-libs/boost[python] )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/eigen3_cmake_module
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
