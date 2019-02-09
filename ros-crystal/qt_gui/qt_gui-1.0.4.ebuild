# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="qt_gui provides the infrastructure for an integrated graphical user interfa[...]"
HOMEPAGE="http://ros.org/wiki/qt_gui"
SRC_URI="https://github.com/ros2-gbp/${PN}_core-release/archive/release/crystal/${PN}/1.0.4-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/ament_index_python
	ros-crystal/python_qt_binding
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	dev-python/catkin_pkg
	x11-themes/tango-icon-theme
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	dev-python/PyQt5
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
