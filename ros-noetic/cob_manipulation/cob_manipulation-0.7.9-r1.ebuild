# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The cob_manipulation stack includes packages that provide manipulation capa[...]"
HOMEPAGE="http://ros.org/wiki/cob_manipulation/"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/noetic/${PN}/0.7.9-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_collision_monitor
	ros-noetic/cob_grasp_generation
	ros-noetic/cob_lookat_action
	ros-noetic/cob_manipulation_msgs
	ros-noetic/cob_moveit_bringup
	ros-noetic/cob_moveit_interface
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
