# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides tools for viewing data produced by nodes that use the\
	swri_pr[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/swri_profiler-release/archive/release/indigo/${PN}/0.2.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/libqt_core
	ros-indigo/libqt_dev
	ros-indigo/libqt_gui
	ros-indigo/libqt_widgets
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/swri_profiler_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/qt_qmake
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
