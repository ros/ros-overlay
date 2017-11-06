# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A GUI application for viewing and editing ROS parameters."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/dornhege/rqt_paramedit-release/archive/release/indigo/qt_paramedit/1.0.0-2.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/roscpp
	dev-qt/qtcore:4
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-qt/qtcore:4
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
