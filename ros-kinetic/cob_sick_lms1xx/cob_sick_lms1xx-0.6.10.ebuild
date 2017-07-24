# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package published a laser scan message out of a Sick LMS1xx laser scanner.\
"
HOMEPAGE="http://ros.org/wiki/cob_sick_lms1xx"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_sick_lms1xx/0.6.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( GPL-1 LGPL-2 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

