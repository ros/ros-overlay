# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="MoveIt launch files"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/${PN}/0.7.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_hardware_config
	ros-melodic/cob_moveit_config
	ros-melodic/joint_state_publisher
	ros-melodic/moveit_planners_ompl
	ros-melodic/moveit_plugins
	ros-melodic/moveit_ros_move_group
	ros-melodic/moveit_ros_perception
	ros-melodic/moveit_ros_visualization
	ros-melodic/moveit_setup_assistant
	ros-melodic/robot_state_publisher
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
