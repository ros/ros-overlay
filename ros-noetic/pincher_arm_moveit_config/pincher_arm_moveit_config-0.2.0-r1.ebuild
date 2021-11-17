# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="http://moveit.ros.org/"
SRC_URI="https://github.com/fictionlab-gbp/pincher_arm-release/archive/release/noetic/${PN}/0.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/joint_state_publisher
	ros-noetic/moveit_fake_controller_manager
	ros-noetic/moveit_kinematics
	ros-noetic/moveit_planners_ompl
	ros-noetic/moveit_ros_move_group
	ros-noetic/moveit_ros_visualization
	ros-noetic/moveit_setup_assistant
	ros-noetic/moveit_simple_controller_manager
	ros-noetic/pincher_arm_description
	ros-noetic/robot_state_publisher
	ros-noetic/tf2_ros
	ros-noetic/xacro
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
