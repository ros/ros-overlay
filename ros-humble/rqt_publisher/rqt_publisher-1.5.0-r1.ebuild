# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="rqt_publisher provides a GUI plugin for publishing arbitrary messages with [...]"
HOMEPAGE="http://wiki.ros.org/rqt_publisher"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/1.5.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/python_qt_binding
	ros-humble/qt_gui_py_common
	ros-humble/rqt_gui
	ros-humble/rqt_gui_py
	ros-humble/rqt_py_common
	dev-python/catkin_pkg
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
