# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="An rqt-based tool that assists monitoring tasks\
   for <a href=\"http://ro[...]"
HOMEPAGE="http://wiki.ros.org/rqt_moveit"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/1.0.1-2.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/python_qt_binding
	ros-eloquent/rclpy
	ros-eloquent/rqt_gui
	ros-eloquent/rqt_gui_py
	ros-eloquent/rqt_py_common
	ros-eloquent/rqt_topic
	ros-eloquent/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-eloquent/rosidl_default_generators
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
