# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A package with all the configuration and launch files for using the KUKA LB[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa-rwu/iiwa_stack-release/archive/release/kinetic/${PN}/1.4.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/effort_controllers
	ros-kinetic/gazebo_ros_control
	ros-kinetic/iiwa_description
	ros-kinetic/joint_state_controller
	ros-kinetic/joint_state_publisher
	ros-kinetic/joint_trajectory_controller
	ros-kinetic/moveit_fake_controller_manager
	ros-kinetic/moveit_planners_ompl
	ros-kinetic/moveit_ros_move_group
	ros-kinetic/moveit_ros_planning_interface
	ros-kinetic/moveit_ros_visualization
	ros-kinetic/moveit_ros_warehouse
	ros-kinetic/moveit_setup_assistant
	ros-kinetic/moveit_simple_controller_manager
	ros-kinetic/position_controllers
	ros-kinetic/robot_state_publisher
	ros-kinetic/velocity_controllers
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
