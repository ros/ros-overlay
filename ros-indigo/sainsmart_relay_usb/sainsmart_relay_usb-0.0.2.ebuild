# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="SainSmart USB relay driver controller"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DataspeedInc-release/${PN}-release/archive/release/indigo/${PN}/0.0.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/roscpp
	ros-indigo/std_msgs
	dev-embedded/libftdi
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslib
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
