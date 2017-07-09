# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Defines helper functions and routines that greatly help when trying to create a '"
HOMEPAGE="http://www.ros.org/wiki/settlerlib"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/indigo/settlerlib/0.10.14-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/calibration_msgs
	ros-indigo/rosconsole
	ros-indigo/rostime
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

