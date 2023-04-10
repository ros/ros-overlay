# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot usin[...]"
HOMEPAGE="http://wiki.ros.org/rqt_plot"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/1.1.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/python_qt_binding
	ros-humble/qt_gui_py_common
	ros-humble/rclpy
	ros-humble/rqt_gui
	ros-humble/rqt_gui_py
	ros-humble/rqt_py_common
	ros-humble/std_msgs
	dev-python/catkin_pkg
	dev-python/matplotlib
	dev-python/numpy
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
