# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A partly automatically generated package with all the configuration and lau[...]"
HOMEPAGE="http://wiki.ros.org/panda_moveit_config"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/${PN}/0.3.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/franka_description
	ros-kinetic/joint_state_publisher
	ros-kinetic/joint_trajectory_controller
	ros-kinetic/moveit_commander
	ros-kinetic/moveit_fake_controller_manager
	ros-kinetic/moveit_kinematics
	ros-kinetic/moveit_planners_ompl
	ros-kinetic/moveit_ros_control_interface
	ros-kinetic/moveit_ros_move_group
	ros-kinetic/moveit_ros_visualization
	ros-kinetic/robot_state_publisher
	ros-kinetic/rospy
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
