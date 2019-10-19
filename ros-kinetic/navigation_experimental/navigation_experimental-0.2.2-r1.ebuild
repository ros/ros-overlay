# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A collection of navigation plugins and tools: Various recovery behaviors,\
[...]"
HOMEPAGE="http://wiki.ros.org/navigation_experimental"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/0.2.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/assisted_teleop
	ros-kinetic/goal_passer
	ros-kinetic/pose_base_controller
	ros-kinetic/pose_follower
	ros-kinetic/sbpl_lattice_planner
	ros-kinetic/sbpl_recovery
	ros-kinetic/twist_recovery
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
