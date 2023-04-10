# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="PlotJuggler: juggle with data"
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/facontidavide/${PN}-release/archive/release/foxy/${PN}/3.6.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="MPL-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ament_index_cpp
	ros-foxy/fastcdr
	ros-foxy/rclcpp
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
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
