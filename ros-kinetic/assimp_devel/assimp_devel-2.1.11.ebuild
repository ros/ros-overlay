# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="assimp library"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/${PN}/2.1.11-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/boost
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/mk
	ros-kinetic/rosboost_cfg
	ros-kinetic/rosbuild
	app-misc/ca-certificates
	dev-vcs/git
	dev-libs/openssl
	app-arch/unzip
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
