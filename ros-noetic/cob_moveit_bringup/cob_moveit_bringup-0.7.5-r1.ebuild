# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="MoveIt launch files"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/${PN}/0.7.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_hardware_config
	ros-noetic/cob_moveit_config
	ros-noetic/joint_state_publisher
	ros-noetic/moveit_planners_ompl
	ros-noetic/moveit_plugins
	ros-noetic/moveit_ros_move_group
	ros-noetic/moveit_ros_perception
	ros-noetic/moveit_ros_visualization
	ros-noetic/moveit_setup_assistant
	ros-noetic/robot_state_publisher
	ros-noetic/rviz
	ros-noetic/tf
	ros-noetic/warehouse_ros
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
