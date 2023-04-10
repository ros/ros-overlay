# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="rqt_console provides a GUI plugin for displaying and filtering ROS messages."
HOMEPAGE="http://wiki.ros.org/rqt_console"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.0.2-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/ament_index_python
	ros-humble/python_qt_binding
	ros-humble/rcl_interfaces
	ros-humble/rclpy
	ros-humble/rqt_gui
	ros-humble/rqt_gui_py
	ros-humble/rqt_py_common
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
