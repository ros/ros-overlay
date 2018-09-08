# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
		This package contains the robot model that is used by the real[...]"
HOMEPAGE="http://ros.org/wiki/pr2_mechanism_model"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/lunar/${PN}/1.8.17-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/angles
	ros-lunar/hardware_interface
	ros-lunar/kdl_parser
	ros-lunar/pluginlib
	ros-lunar/pr2_hardware_interface
	ros-lunar/roscpp
	ros-lunar/urdf
	dev-libs/urdfdom
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/rostest
	ros-lunar/rosunit
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
