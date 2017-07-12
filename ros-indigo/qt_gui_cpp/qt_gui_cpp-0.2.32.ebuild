# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="qt_gui_cpp provides the foundation for Cbindings for qt_gui and creates bindi"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/qt_gui_core-release/archive/release/indigo/qt_gui_cpp/0.2.32-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/pluginlib
	ros-indigo/qt_gui
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/python_qt_binding
	dev-qt/qtcore:4
	virtual/pkgconfig
	dev-qt/qtcore:4
	dev-libs/tinyxml
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

