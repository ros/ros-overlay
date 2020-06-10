# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates [...]"
HOMEPAGE="http://ros.org/wiki/qt_gui_cpp"
SRC_URI="https://github.com/ros2-gbp/qt_gui_core-release/archive/release/foxy/${PN}/1.1.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/pluginlib
	ros-foxy/qt_gui
	ros-foxy/tinyxml2_vendor
	test? ( ros-foxy/ament_cmake_pytest )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/python_qt_binding
	virtual/pkgconfig
	dev-qt/qtcore:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
