# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot usin[...]"
HOMEPAGE="http://wiki.ros.org/rqt_plot"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.1.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/python_qt_binding
	ros-galactic/qt_gui_py_common
	ros-galactic/rclpy
	ros-galactic/rqt_gui
	ros-galactic/rqt_gui_py
	ros-galactic/rqt_py_common
	ros-galactic/std_msgs
	dev-python/catkin_pkg
	dev-python/matplotlib
	dev-python/numpy
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
