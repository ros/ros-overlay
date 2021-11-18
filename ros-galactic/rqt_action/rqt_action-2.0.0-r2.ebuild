# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="rqt_action provides a feature to introspect all available ROS\
  action typ[...]"
HOMEPAGE="http://wiki.ros.org/rqt_action"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/2.0.0-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/python_qt_binding
	ros-galactic/rclpy
	ros-galactic/rqt_gui
	ros-galactic/rqt_gui_py
	ros-galactic/rqt_msg
	ros-galactic/rqt_py_common
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
