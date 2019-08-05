# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The robot_statemachine package bundles all functionalities and the GUI"
HOMEPAGE="https://github.com/MarcoStb1993/robot_statemachine"
SRC_URI="https://github.com/MarcoStb1993/${PN}-release/archive/release/kinetic/${PN}/1.1.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rsm_additions
	ros-kinetic/rsm_core
	ros-kinetic/rsm_msgs
	ros-kinetic/rsm_rqt_plugins
	ros-kinetic/rsm_rviz_plugins
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
