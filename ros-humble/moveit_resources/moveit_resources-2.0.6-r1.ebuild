# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Resources used for MoveIt testing"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.0.6-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/joint_state_publisher
	ros-humble/moveit_resources_fanuc_description
	ros-humble/moveit_resources_fanuc_moveit_config
	ros-humble/moveit_resources_panda_description
	ros-humble/moveit_resources_panda_moveit_config
	ros-humble/moveit_resources_pr2_description
	ros-humble/robot_state_publisher
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
