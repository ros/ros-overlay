# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="<p>\
		This package contains the robot model that is used by the real[...]"
HOMEPAGE="http://ros.org/wiki/pr2_mechanism_model"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/kinetic/${PN}/1.8.17-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/angles
	ros-kinetic/hardware_interface
	ros-kinetic/kdl_parser
	ros-kinetic/pluginlib
	ros-kinetic/pr2_hardware_interface
	ros-kinetic/roscpp
	ros-kinetic/urdf
	dev-libs/urdfdom
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	ros-kinetic/rostest
	ros-kinetic/rosunit
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
