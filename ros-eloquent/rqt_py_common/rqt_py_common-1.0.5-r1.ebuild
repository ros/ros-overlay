# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="rqt_py_common provides common functionality for rqt plugins written in Pyth[...]"
HOMEPAGE="http://ros.org/wiki/rqt_py_common"
SRC_URI="https://github.com/ros2-gbp/rqt-release/archive/release/eloquent/${PN}/1.0.5-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/python_qt_binding
	ros-eloquent/qt_gui
	ros-eloquent/rclpy
	ros-eloquent/rosidl_default_runtime
	test? ( ros-eloquent/ament_cmake_pytest )
	test? ( ros-eloquent/python_cmake_module )
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
