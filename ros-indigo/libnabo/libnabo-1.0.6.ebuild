# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'libnabo is a fast K Nearest Neighbour library for low-dimensional spaces.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ethz-asl/libnabo-release/archive/release/indigo/libnabo/1.0.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	dev-libs/boost
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

