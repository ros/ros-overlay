# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="OMPL is a free sampling-based motion planning library."
HOMEPAGE="https://ompl.kavrakilab.org"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/foxy/${PN}/1.5.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/boost[python]
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-util/cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
