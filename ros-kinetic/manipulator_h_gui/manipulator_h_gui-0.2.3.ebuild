# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The manipulator_h_gui package	This package provides simple GUI to control RO"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-MANIPULATOR-H-release/archive/release/kinetic/manipulator_h_gui/0.2.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/eigen_conversions
	ros-kinetic/geometry_msgs
	ros-kinetic/qt_build
	ros-kinetic/roscpp
	dev-qt/qtcore:4
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/manipulator_h_base_module_msgs
	ros-kinetic/robotis_controller_msgs
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

