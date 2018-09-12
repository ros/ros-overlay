# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/kinetic/${PN}/0.10.6-1 -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-kinetic/rdl_cmake )
	dev-cpp/eigen
	media-gfx/graphviz
	test? ( dev-cpp/gtest )
	test? ( dev-util/lcov )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	app-doc/doxygen
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
