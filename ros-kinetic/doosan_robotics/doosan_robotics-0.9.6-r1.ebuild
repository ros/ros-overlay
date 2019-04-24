# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The doosan_robotics metapackage"
HOMEPAGE="http://wiki.ros.org/doosan_robotics"
SRC_URI="https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/${PN}/0.9.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dsr_control
	ros-kinetic/dsr_description
	ros-kinetic/dsr_example_cpp
	ros-kinetic/dsr_example_py
	ros-kinetic/dsr_gazebo
	ros-kinetic/dsr_launcher
	ros-kinetic/dsr_msgs
	ros-kinetic/moveit_config_m0609
	ros-kinetic/moveit_config_m0617
	ros-kinetic/moveit_config_m1013
	ros-kinetic/moveit_config_m1509
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/controller_manager
	ros-kinetic/effort_controllers
	ros-kinetic/gazebo_ros_control
	ros-kinetic/interactive_marker_twist_server
	ros-kinetic/lms1xx
	ros-kinetic/moveit_commander
	ros-kinetic/moveit_core
	ros-kinetic/moveit_experimental
	ros-kinetic/moveit_kinematics
	ros-kinetic/moveit_setup_assistant
	ros-kinetic/position_controllers
	ros-kinetic/robot_localization
	ros-kinetic/twist_mux
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
