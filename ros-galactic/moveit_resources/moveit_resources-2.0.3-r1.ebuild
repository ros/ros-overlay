# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Resources used for MoveIt testing"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/${PN}-release/archive/release/galactic/${PN}/2.0.3-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/joint_state_publisher
	ros-galactic/moveit_resources_fanuc_description
	ros-galactic/moveit_resources_fanuc_moveit_config
	ros-galactic/moveit_resources_panda_description
	ros-galactic/moveit_resources_panda_moveit_config
	ros-galactic/moveit_resources_pr2_description
	ros-galactic/robot_state_publisher
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
