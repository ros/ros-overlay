# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS."
HOMEPAGE="http://ros.org/wiki/rqt_gui_cpp"
SRC_URI="https://github.com/ros2-gbp/rqt-release/archive/release/crystal/${PN}/1.0.2-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/qt_gui
	ros-crystal/qt_gui_cpp
	ros-crystal/rclcpp
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
