# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The mesh_client package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/${PN}/1.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/lvr2
	ros-melodic/roscpp
	net-misc/curl
	dev-cpp/eigen
	dev-libs/jsoncpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
