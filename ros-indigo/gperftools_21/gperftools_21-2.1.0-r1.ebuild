# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Fast, multithreaded malloc and nifty performance analysis tools"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gperftools_21-release/archive/release/indigo/gperftools_21/2.1.0-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-util/gperf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

