# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The pincher_arm metapackage."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fictionlab-gbp/${PN}-release/archive/release/noetic/${PN}/0.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/pincher_arm_bringup
	ros-noetic/pincher_arm_description
	ros-noetic/pincher_arm_ikfast_plugin
	ros-noetic/pincher_arm_moveit_config
	ros-noetic/pincher_arm_moveit_demos
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
