# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A collection of navigation plugins and tools: Various recovery behaviors,\
[...]"
HOMEPAGE="http://wiki.ros.org/navigation_experimental"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.3.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/assisted_teleop
	ros-melodic/goal_passer
	ros-melodic/pose_base_controller
	ros-melodic/pose_follower
	ros-melodic/sbpl_lattice_planner
	ros-melodic/sbpl_recovery
	ros-melodic/twist_recovery
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
