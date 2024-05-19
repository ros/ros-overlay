# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A radar-like visualization for humans in the scene, representing their posi[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros4hri/${PN}-release/archive/release/noetic/${PN}/0.2.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/hri
	ros-noetic/rqt_gui
	ros-noetic/rqt_gui_cpp
	ros-noetic/tf
	dev-qt/qtsvg:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roscpp
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
