# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot usin[...]"
HOMEPAGE="http://wiki.ros.org/rqt_plot"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/1.0.7-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/python_qt_binding
	ros-eloquent/qt_gui_py_common
	ros-eloquent/rclpy
	ros-eloquent/rqt_gui
	ros-eloquent/rqt_gui_py
	ros-eloquent/rqt_py_common
	ros-eloquent/std_msgs
	dev-python/catkin_pkg
	dev-python/matplotlib
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
