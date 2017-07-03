# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="OMPL is a free sampling-based motion planning library."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ompl-release/archive/release/lunar/ompl/1.3.1-3.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/boost
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-util/cmake
	virtual/pkgconfig
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

