# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Catkin wrapper for the official ARSDK from Parrot"
HOMEPAGE="http://wiki.ros.org/parrot_arsdk"
SRC_URI="https://github.com/AutonomyLab/${PN}-release/archive/release/lunar/${PN}/3.14.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	sys-devel/autoconf
	sys-devel/automake
	net-misc/curl
	virtual/ffmpeg
	net-dns/avahi
	net-dns/avahi
	sys-libs/ncurses
	sys-devel/libtool
	dev-lang/nasm
	app-arch/unzip
	dev-lang/yasm
	sys-libs/zlib
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
