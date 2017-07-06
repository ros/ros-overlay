# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'julius: Open-Source Large Vocabulary CSR Engine (http://julius.sourceforge.jp/in'"
HOMEPAGE="http://ros.org/wiki/julius"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/julius/2.1.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/mk
	ros-kinetic/roslib
	ros-kinetic/rospack
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

