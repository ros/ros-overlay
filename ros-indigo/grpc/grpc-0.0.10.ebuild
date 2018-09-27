# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Catkinized gRPC Package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/CogRobRelease/catkin_${PN}-release/archive/release/indigo/${PN}/0.0.10-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	sys-devel/autoconf
	dev-vcs/git
	sys-devel/libtool
	net-misc/rsync
	sys-libs/zlib
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
