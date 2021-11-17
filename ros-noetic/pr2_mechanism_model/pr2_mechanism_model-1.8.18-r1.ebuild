# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="<p>\
		This package contains the robot model that is used by the real[...]"
HOMEPAGE="http://ros.org/wiki/pr2_mechanism_model"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/noetic/${PN}/1.8.18-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/angles
	ros-noetic/hardware_interface
	ros-noetic/kdl_parser
	ros-noetic/pluginlib
	ros-noetic/pr2_hardware_interface
	ros-noetic/roscpp
	ros-noetic/urdf
	dev-libs/urdfdom
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	ros-noetic/rostest
	ros-noetic/rosunit
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
