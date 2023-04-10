# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="PlotJuggler: juggle with data"
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/facontidavide/${PN}-release/archive/release/melodic/${PN}/3.6.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MPL-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/roscpp
	ros-melodic/roslib
	sys-devel/binutils
	dev-libs/boost[python]
	dev-qt/qtopengl:5
	dev-qt/qtsvg:5
	dev-qt/qtwebsockets:5
	dev-qt/qtx11extras:5
	net-libs/cppzmq
	app-arch/zstd
	app-arch/lz4
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
