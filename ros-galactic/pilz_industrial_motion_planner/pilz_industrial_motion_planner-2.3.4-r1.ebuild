# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="MoveIt plugin to generate industrial trajectories PTP, LIN, CIRC and sequen[...]"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/galactic/${PN}/2.3.4-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/geometry_msgs
	ros-galactic/moveit_core
	ros-galactic/moveit_msgs
	ros-galactic/moveit_ros_move_group
	ros-galactic/moveit_ros_planning
	ros-galactic/moveit_ros_planning_interface
	ros-galactic/orocos_kdl
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/tf2
	ros-galactic/tf2_eigen
	ros-galactic/tf2_eigen_kdl
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_kdl
	ros-galactic/tf2_ros
	test? ( ros-galactic/ament_cmake_gmock )
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/moveit_resources_panda_moveit_config )
	test? ( ros-galactic/moveit_resources_prbt_moveit_config )
	test? ( ros-galactic/moveit_resources_prbt_pg70_support )
	test? ( ros-galactic/moveit_resources_prbt_support )
	test? ( ros-galactic/pilz_industrial_motion_planner_testutils )
	test? ( ros-galactic/ros_testing )
	test? ( dev-libs/boost[python] )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/eigen3_cmake_module
	ros-galactic/moveit_common
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
