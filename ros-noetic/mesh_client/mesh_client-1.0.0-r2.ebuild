# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The mesh_client package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/${PN}/1.0.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/lvr2
	ros-noetic/roscpp
	net-misc/curl
	dev-cpp/eigen
	dev-libs/jsoncpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
