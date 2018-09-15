# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pilz_trajectory_generation package"
HOMEPAGE="https://wiki.ros.org/pilz_industrial_motion"
SRC_URI="https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/${PN}/0.2.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/moveit_commander
	ros-melodic/moveit_core
	ros-melodic/moveit_msgs
	ros-melodic/moveit_ros_move_group
	ros-melodic/moveit_ros_planning
	ros-melodic/moveit_ros_planning_interface
	ros-melodic/orocos_kdl
	ros-melodic/pilz_extensions
	ros-melodic/pilz_msgs
	ros-melodic/prbt_ikfast_manipulator_plugin
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf_conversions
	test? ( ros-melodic/cmake_modules )
	test? ( ros-melodic/code_coverage )
	test? ( ros-melodic/pilz_industrial_motion_testutils )
	test? ( ros-melodic/prbt_moveit_config )
	test? ( ros-melodic/prbt_pg70_support )
	test? ( ros-melodic/prbt_support )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/pluginlib
	ros-melodic/roslint
	ros-melodic/tf2_eigen
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
