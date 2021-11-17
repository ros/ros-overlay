# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The pr2_mechanism stack contains the infrastructure to control the PR2 robo[...]"
HOMEPAGE="http://ros.org/wiki/pr2_mechanism"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/noetic/${PN}/1.8.18-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/pr2_controller_interface
	ros-noetic/pr2_controller_manager
	ros-noetic/pr2_hardware_interface
	ros-noetic/pr2_mechanism_diagnostics
	ros-noetic/pr2_mechanism_model
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
