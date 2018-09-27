# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pilz_trajectory_generation package"
HOMEPAGE="https://wiki.ros.org/pilz_industrial_motion"
SRC_URI="https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/${PN}/0.1.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/message_runtime
	ros-kinetic/moveit_commander
	ros-kinetic/moveit_core
	ros-kinetic/moveit_msgs
	ros-kinetic/moveit_ros_move_group
	ros-kinetic/moveit_ros_planning
	ros-kinetic/moveit_ros_planning_interface
	ros-kinetic/orocos_kdl
	ros-kinetic/pilz_extensions
	ros-kinetic/pilz_msgs
	ros-kinetic/prbt_ikfast_manipulator_plugin
	ros-kinetic/roscpp
	ros-kinetic/tf2
	ros-kinetic/tf2_geometry_msgs
	test? ( ros-kinetic/abb_irb2400_moveit_config )
	test? ( ros-kinetic/cmake_modules )
	test? ( ros-kinetic/code_coverage )
	test? ( ros-kinetic/panda_moveit_config )
	test? ( ros-kinetic/pilz_industrial_motion_testutils )
	test? ( ros-kinetic/prbt_moveit_config )
	test? ( ros-kinetic/prbt_pg70_support )
	test? ( ros-kinetic/prbt_support )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/eigen_conversions
	ros-kinetic/pluginlib
	ros-kinetic/tf2_eigen
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
