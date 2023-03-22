# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates [...]"
HOMEPAGE="http://ros.org/wiki/qt_gui_cpp"
SRC_URI="https://github.com/ros2-gbp/qt_gui_core-release/archive/release/humble/${PN}/2.2.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/pluginlib
	ros-humble/qt_gui
	ros-humble/rcpputils
	ros-humble/tinyxml2_vendor
	test? ( ros-humble/ament_cmake_pytest )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/python_qt_binding
	virtual/pkgconfig
	dev-qt/qtcore:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
