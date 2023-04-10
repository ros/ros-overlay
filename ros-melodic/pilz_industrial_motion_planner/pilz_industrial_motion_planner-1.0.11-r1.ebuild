# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="MoveIt plugin to generate industrial trajectories PTP, LIN, CIRC and sequen[...]"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/melodic/${PN}/1.0.11-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/eigen_conversions
	ros-melodic/joint_limits_interface
	ros-melodic/kdl_conversions
	ros-melodic/moveit_core
	ros-melodic/moveit_msgs
	ros-melodic/moveit_ros_move_group
	ros-melodic/moveit_ros_planning
	ros-melodic/moveit_ros_planning_interface
	ros-melodic/orocos_kdl
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/tf2
	ros-melodic/tf2_eigen
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_kdl
	ros-melodic/tf2_ros
	test? ( ros-melodic/cmake_modules )
	test? ( ros-melodic/code_coverage )
	test? ( ros-melodic/moveit_resources_panda_moveit_config )
	test? ( ros-melodic/moveit_resources_prbt_moveit_config )
	test? ( ros-melodic/moveit_resources_prbt_pg70_support )
	test? ( ros-melodic/moveit_resources_prbt_support )
	test? ( ros-melodic/pilz_industrial_motion_planner_testutils )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
