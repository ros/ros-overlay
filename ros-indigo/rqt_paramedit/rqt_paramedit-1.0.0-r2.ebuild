# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rqt_paramedit - a rqt plugin for editing parameters using qt_paramedit."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/dornhege/rqt_paramedit-release/archive/release/indigo/rqt_paramedit/1.0.0-2.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/qt_paramedit
	ros-indigo/roscpp
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_cpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
