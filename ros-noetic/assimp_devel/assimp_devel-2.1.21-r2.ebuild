# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="assimp library"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/${PN}/2.1.21-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/boost[python]
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/mk
	ros-noetic/rosboost_cfg
	ros-noetic/rosbuild
	app-misc/ca-certificates
	dev-vcs/git
	dev-libs/openssl
	app-arch/unzip
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
