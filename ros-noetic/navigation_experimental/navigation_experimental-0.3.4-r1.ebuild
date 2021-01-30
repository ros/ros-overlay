# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A collection of navigation plugins and tools: Various recovery behaviors,\
[...]"
HOMEPAGE="http://wiki.ros.org/navigation_experimental"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.3.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/assisted_teleop
	ros-noetic/goal_passer
	ros-noetic/pose_base_controller
	ros-noetic/pose_follower
	ros-noetic/sbpl_lattice_planner
	ros-noetic/sbpl_recovery
	ros-noetic/twist_recovery
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
