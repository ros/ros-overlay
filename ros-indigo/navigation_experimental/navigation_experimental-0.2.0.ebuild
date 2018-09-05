# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A collection of navigation plugins and tools: Various recovery behaviors,\
[...]"
HOMEPAGE="http://wiki.ros.org/navigation_experimental"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/indigo/${PN}/0.2.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/assisted_teleop
	ros-indigo/goal_passer
	ros-indigo/pose_base_controller
	ros-indigo/pose_follower
	ros-indigo/sbpl_lattice_planner
	ros-indigo/sbpl_recovery
	ros-indigo/twist_recovery
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
