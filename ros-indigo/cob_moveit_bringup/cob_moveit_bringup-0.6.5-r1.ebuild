# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="MoveIt launch files"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/indigo/cob_moveit_bringup/0.6.5-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_hardware_config
	ros-indigo/cob_moveit_config
	ros-indigo/joint_state_publisher
	ros-indigo/moveit_planners_ompl
	ros-indigo/moveit_plugins
	ros-indigo/moveit_ros_move_group
	ros-indigo/moveit_ros_perception
	ros-indigo/moveit_ros_visualization
	ros-indigo/moveit_setup_assistant
	ros-indigo/robot_state_publisher
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

