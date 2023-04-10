# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="An rqt-based tool that assists monitoring tasks\
   for <a href=\"http://ro[...]"
HOMEPAGE="http://wiki.ros.org/rqt_moveit"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/1.0.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/python_qt_binding
	ros-foxy/rclpy
	ros-foxy/rqt_gui
	ros-foxy/rqt_gui_py
	ros-foxy/rqt_py_common
	ros-foxy/rqt_topic
	ros-foxy/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-foxy/rosidl_default_generators
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
