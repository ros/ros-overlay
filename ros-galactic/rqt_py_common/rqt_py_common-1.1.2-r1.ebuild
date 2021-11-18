# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="rqt_py_common provides common functionality for rqt plugins written in Pyth[...]"
HOMEPAGE="http://ros.org/wiki/rqt_py_common"
SRC_URI="https://github.com/ros2-gbp/rqt-release/archive/release/galactic/${PN}/1.1.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/python_qt_binding
	ros-galactic/qt_gui
	ros-galactic/rclpy
	test? ( ros-galactic/ament_cmake_pytest )
	test? ( ros-galactic/python_cmake_module )
	test? ( ros-galactic/rosidl_default_generators )
	test? ( ros-galactic/rosidl_default_runtime )
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
