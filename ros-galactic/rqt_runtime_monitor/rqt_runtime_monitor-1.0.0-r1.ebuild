# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="rqt_runtime_monitor provides a GUI plugin viewing DiagnosticsArray messages."
HOMEPAGE="http://wiki.ros.org/rqt_runtime_monitor"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.0.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_python
	ros-galactic/diagnostic_msgs
	ros-galactic/python_qt_binding
	ros-galactic/qt_gui
	ros-galactic/rclpy
	ros-galactic/rqt_gui
	ros-galactic/rqt_gui_py
	test? ( ros-galactic/ament_copyright )
	test? ( ros-galactic/ament_flake8 )
	test? ( ros-galactic/ament_pep257 )
	dev-python/rospkg
	dev-python/rospkg
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
