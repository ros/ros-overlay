# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'cob_undercarriage_ctrl implements a controller for the omnidirectional base of C'"
HOMEPAGE="http://ros.org/wiki/cob_undercarriage_ctrl"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/indigo/cob_undercarriage_ctrl/0.6.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_msgs
	ros-indigo/cob_utilities
	ros-indigo/control_msgs
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

