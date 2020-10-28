# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="iXblue parsing library for protocol iXblue stdbin"
HOMEPAGE="http://wiki.ros.org/ixblue_stdbin_decoder"
SRC_URI="https://github.com/ixblue/${PN}-release/archive/release/noetic/${PN}/0.1.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/catkin
	dev-libs/boost
	dev-libs/boost
	test? ( dev-vcs/git )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
