# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains generic definitions of geometric shapes and bodies."
HOMEPAGE="http://ros.org/wiki/geometric_shapes"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/0.5.4-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/eigen_stl_containers
	ros-lunar/octomap
	ros-lunar/random_numbers
	ros-lunar/resource_retriever
	ros-lunar/shape_msgs
	ros-lunar/visualization_msgs
	test? ( ros-lunar/rosunit )
	media-libs/assimp
	dev-libs/boost
	dev-cpp/eigen
	dev-libs/console_bridge
	media-libs/qhull
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	media-libs/assimp
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_prepare() {
	cd ${P}
	EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
	EPATCH_FORCE="yes" epatch
	ros-cmake_src_prepare
}
