# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
		This package contains the robot model that is used by the real[...]"
HOMEPAGE="http://ros.org/wiki/pr2_mechanism_model"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/melodic/${PN}/1.8.18-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/angles
	ros-melodic/hardware_interface
	ros-melodic/kdl_parser
	ros-melodic/pluginlib
	ros-melodic/pr2_hardware_interface
	ros-melodic/roscpp
	ros-melodic/urdf
	dev-libs/urdfdom
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/rostest
	ros-melodic/rosunit
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
