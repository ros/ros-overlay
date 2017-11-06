# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The cob_manipulation stack includes packages that provide manipulation capabilit"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/indigo/cob_manipulation/0.6.5-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_collision_monitor
	ros-indigo/cob_grasp_generation
	ros-indigo/cob_kinematics
	ros-indigo/cob_lookat_action
	ros-indigo/cob_moveit_bringup
	ros-indigo/cob_moveit_interface
	ros-indigo/cob_obstacle_distance_moveit
	ros-indigo/cob_pick_place_action
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

