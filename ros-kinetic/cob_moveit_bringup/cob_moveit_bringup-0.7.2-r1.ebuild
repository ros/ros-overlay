# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="MoveIt launch files"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/${PN}/0.7.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_hardware_config
	ros-kinetic/cob_moveit_config
	ros-kinetic/joint_state_publisher
	ros-kinetic/moveit_planners_ompl
	ros-kinetic/moveit_plugins
	ros-kinetic/moveit_ros_move_group
	ros-kinetic/moveit_ros_perception
	ros-kinetic/moveit_ros_visualization
	ros-kinetic/moveit_setup_assistant
	ros-kinetic/robot_state_publisher
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
