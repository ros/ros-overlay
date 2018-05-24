# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="qt_gui provides the infrastructure for an integrated graphical user interfa[...]"
HOMEPAGE="http://ros.org/wiki/qt_gui"
SRC_URI="https://github.com/ros-gbp/${PN}_core-release/archive/release/indigo/${PN}/0.2.33-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/python_qt_binding
	dev-python/rospkg
	x11-themes/tango-icon-theme
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-python/pyside
	dev-python/PyQt4
	dev-qt/qtcore:4
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
