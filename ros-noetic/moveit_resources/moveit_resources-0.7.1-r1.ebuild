# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Resources used for MoveIt! testing"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.7.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/joint_state_publisher
	ros-noetic/moveit_resources_fanuc_description
	ros-noetic/moveit_resources_fanuc_moveit_config
	ros-noetic/moveit_resources_panda_description
	ros-noetic/moveit_resources_panda_moveit_config
	ros-noetic/moveit_resources_pr2_description
	ros-noetic/robot_state_publisher
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
