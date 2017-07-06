# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The jsk_control package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_control/0.1.13-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/eus_nlopt
	ros-kinetic/eus_qp
	ros-kinetic/eus_qpoases
	ros-kinetic/joy_mouse
	ros-kinetic/jsk_calibration
	ros-kinetic/jsk_footstep_controller
	ros-kinetic/jsk_footstep_planner
	ros-kinetic/jsk_ik_server
	ros-kinetic/jsk_teleop_joy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

