# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="PlotJuggler: juggle with data"
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/3.5.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="MPL-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/ament_index_cpp
	ros-humble/rclcpp
	sys-devel/binutils
	dev-libs/boost[python]
	dev-qt/qtopengl:5
	dev-qt/qtsvg:5
	dev-qt/qtwebsockets:5
	dev-qt/qtx11extras:5
	net-libs/cppzmq
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
