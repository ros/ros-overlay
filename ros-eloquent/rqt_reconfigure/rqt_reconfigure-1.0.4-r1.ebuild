# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="This rqt plugin provides a way to view and edit parameters on nodes."
HOMEPAGE="http://wiki.ros.org/rqt_reconfigure"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/1.0.4-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="( BSD Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/ament_index_python
	ros-eloquent/python_qt_binding
	ros-eloquent/qt_gui_py_common
	ros-eloquent/rclpy
	ros-eloquent/rqt_console
	ros-eloquent/rqt_gui
	ros-eloquent/rqt_gui_py
	ros-eloquent/rqt_py_common
	test? ( ros-eloquent/ament_copyright )
	test? ( ros-eloquent/ament_flake8 )
	test? ( ros-eloquent/ament_xmllint )
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
