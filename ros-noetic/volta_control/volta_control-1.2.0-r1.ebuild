# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The volta_control package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/botsync-gbp/volta-release/archive/release/noetic/${PN}/1.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_manager
	ros-noetic/diff_drive_controller
	ros-noetic/joint_state_controller
	ros-noetic/twist_mux
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
