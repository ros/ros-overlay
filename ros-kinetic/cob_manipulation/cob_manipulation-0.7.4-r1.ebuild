# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_manipulation stack includes packages that provide manipulation capa[...]"
HOMEPAGE="http://ros.org/wiki/cob_manipulation/"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/kinetic/${PN}/0.7.4-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_collision_monitor
	ros-kinetic/cob_grasp_generation
	ros-kinetic/cob_lookat_action
	ros-kinetic/cob_moveit_bringup
	ros-kinetic/cob_moveit_interface
	ros-kinetic/cob_obstacle_distance_moveit
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
