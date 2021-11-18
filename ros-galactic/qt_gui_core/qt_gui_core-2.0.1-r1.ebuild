# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Integration of the ROS package system and ROS-specific plugins for a Qt-bas[...]"
HOMEPAGE="http://ros.org/wiki/qt_gui_core"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/2.0.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/qt_dotgraph
	ros-galactic/qt_gui
	ros-galactic/qt_gui_app
	ros-galactic/qt_gui_cpp
	ros-galactic/qt_gui_py_common
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
