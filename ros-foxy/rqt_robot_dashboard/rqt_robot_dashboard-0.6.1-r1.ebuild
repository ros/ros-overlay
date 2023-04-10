# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="rqt_robot_dashboard provides an infrastructure for building robot dashboard[...]"
HOMEPAGE="http://wiki.ros.org/rqt_robot_dashboard"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/foxy/${PN}/0.6.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/diagnostic_msgs
	ros-foxy/python_qt_binding
	ros-foxy/qt_gui
	ros-foxy/rclpy
	ros-foxy/rqt_console
	ros-foxy/rqt_gui
	ros-foxy/rqt_gui_py
	ros-foxy/rqt_robot_monitor
"
DEPEND="${RDEPEND}
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
