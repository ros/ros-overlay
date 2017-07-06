# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The jsk_control package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/indigo/jsk_control/0.1.13-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/eus_nlopt
	ros-indigo/eus_qp
	ros-indigo/eus_qpoases
	ros-indigo/joy_mouse
	ros-indigo/jsk_calibration
	ros-indigo/jsk_footstep_controller
	ros-indigo/jsk_footstep_planner
	ros-indigo/jsk_ik_server
	ros-indigo/jsk_teleop_joy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

