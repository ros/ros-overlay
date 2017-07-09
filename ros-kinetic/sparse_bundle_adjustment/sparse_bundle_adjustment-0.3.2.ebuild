# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS wrapper for the sparse bundle adjustment sba library needed for slam_kart"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/sparse_bundle_adjustment-release/archive/release/kinetic/sparse_bundle_adjustment/0.3.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/blas
	virtual/lapack
	sci-libs/suitesparse
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

