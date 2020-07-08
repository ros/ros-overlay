# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="rqt_robot_monitor displays diagnostics_agg topics messages that\
   are pub[...]"
HOMEPAGE="http://wiki.ros.org/rqt_robot_monitor"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/1.0.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/diagnostic_msgs
	ros-foxy/python_qt_binding
	ros-foxy/qt_gui
	ros-foxy/qt_gui_py_common
	ros-foxy/rclpy
	ros-foxy/rqt_gui
	ros-foxy/rqt_gui_py
	ros-foxy/rqt_py_common
	dev-python/rospkg
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
