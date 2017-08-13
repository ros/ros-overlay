# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Catkin wrapper for the official ARSDK from Parrot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/AutonomyLab/parrot_arsdk-release/archive/release/kinetic/parrot_arsdk/3.12.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
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
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

