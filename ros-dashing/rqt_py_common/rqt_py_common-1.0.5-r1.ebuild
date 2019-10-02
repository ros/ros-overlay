# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="rqt_py_common provides common functionality for rqt plugins written in Pyth[...]"
HOMEPAGE="http://ros.org/wiki/rqt_py_common"
SRC_URI="https://github.com/ros2-gbp/rqt-release/archive/release/dashing/${PN}/1.0.5-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/python_qt_binding
	ros-dashing/qt_gui
	ros-dashing/rclpy
	ros-dashing/rosidl_default_runtime
	test? ( ros-dashing/ament_cmake_pytest )
	test? ( ros-dashing/python_cmake_module )
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
