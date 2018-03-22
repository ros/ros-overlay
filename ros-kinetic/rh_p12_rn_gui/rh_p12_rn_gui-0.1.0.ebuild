# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides GUI interface to control the RH-P12-RN"
HOMEPAGE="http://wiki.ros.org/rh_p12_rn_gui"
SRC_URI="https://github.com/ROBOTIS-GIT-release/RH-P12-RN-release/archive/release/kinetic/${PN}/0.1.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/qt_build
	ros-kinetic/rh_p12_rn_base_module_msgs
	ros-kinetic/robotis_controller_msgs
	ros-kinetic/roscpp
	dev-qt/qtcore:4
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
