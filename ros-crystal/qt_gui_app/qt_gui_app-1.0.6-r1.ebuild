# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="qt_gui_app provides the main to start an instance of the integrated graphic[...]"
HOMEPAGE="http://ros.org/wiki/qt_gui_app"
SRC_URI="https://github.com/ros2-gbp/qt_gui_core-release/archive/release/crystal/${PN}/1.0.6-1.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/ament_index_python
	ros-crystal/qt_gui
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
