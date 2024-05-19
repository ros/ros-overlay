# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The jsk_control package"
HOMEPAGE="http://ros.org/wiki/jsk_control"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/noetic/${PN}/0.1.17-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/eus_nlopt
	ros-noetic/eus_qp
	ros-noetic/eus_qpoases
	ros-noetic/joy_mouse
	ros-noetic/jsk_calibration
	ros-noetic/jsk_footstep_controller
	ros-noetic/jsk_footstep_planner
	ros-noetic/jsk_ik_server
	ros-noetic/jsk_teleop_joy
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
