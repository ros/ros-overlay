# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="rqt_robot_dashboard provides an infrastructure for building robot dashboard[...]"
HOMEPAGE="http://wiki.ros.org/rqt_robot_dashboard"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/galactic/${PN}/0.6.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/diagnostic_msgs
	ros-galactic/python_qt_binding
	ros-galactic/qt_gui
	ros-galactic/rclpy
	ros-galactic/rqt_console
	ros-galactic/rqt_gui
	ros-galactic/rqt_gui_py
	ros-galactic/rqt_robot_monitor
"
DEPEND="${RDEPEND}
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
