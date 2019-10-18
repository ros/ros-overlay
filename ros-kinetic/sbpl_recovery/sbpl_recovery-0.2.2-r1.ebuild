# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A recovery behavior that uses the sbpl lattice planner and the pose\
	fo[...]"
HOMEPAGE="http://wiki.ros.org/sbpl_recovery"
SRC_URI="https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/${PN}/0.2.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/base_local_planner
	ros-kinetic/costmap_2d
	ros-kinetic/nav_core
	ros-kinetic/pluginlib
	ros-kinetic/pose_follower
	ros-kinetic/roscpp
	ros-kinetic/sbpl_lattice_planner
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
