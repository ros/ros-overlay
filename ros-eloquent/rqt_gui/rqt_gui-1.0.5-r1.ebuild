# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="rqt_gui provides the main to start an instance of the ROS integrated graphi[...]"
HOMEPAGE="http://ros.org/wiki/rqt_gui"
SRC_URI="https://github.com/ros2-gbp/rqt-release/archive/release/eloquent/${PN}/1.0.5-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/ament_index_python
	ros-eloquent/python_qt_binding
	ros-eloquent/qt_gui
	ros-eloquent/rclpy
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	dev-python/catkin_pkg
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
