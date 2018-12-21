# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="PlotJuggler: juggle with data"
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/facontidavide/${PN}-release/archive/release/kinetic/${PN}/1.9.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ros_type_introspection
	ros-kinetic/rosbag
	ros-kinetic/rosbag_storage
	ros-kinetic/roscpp
	ros-kinetic/roscpp_serialization
	ros-kinetic/rostime
	ros-kinetic/topic_tools
	sys-devel/binutils
	dev-qt/qtsvg:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
