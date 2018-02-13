# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The pr2_mechanism stack contains the infrastructure to control the PR2 robo[...]"
HOMEPAGE="http://ros.org/wiki/pr2_mechanism"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/kinetic/${PN}/1.8.17-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/pr2_controller_interface
	ros-kinetic/pr2_controller_manager
	ros-kinetic/pr2_hardware_interface
	ros-kinetic/pr2_mechanism_diagnostics
	ros-kinetic/pr2_mechanism_model
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
