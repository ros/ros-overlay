# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="rqt_shell is a Python GUI plugin providing an interactive shell."
HOMEPAGE="http://wiki.ros.org/rqt_shell"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.4.11-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/python_qt_binding
	ros-noetic/qt_gui
	ros-noetic/qt_gui_py_common
	ros-noetic/rqt_gui
	ros-noetic/rqt_gui_py
	dev-python/rospkg
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
