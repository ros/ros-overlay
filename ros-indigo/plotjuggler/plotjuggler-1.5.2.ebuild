# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="PlotJuggler: juggle with data"
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/facontidavide/${PN}-release/archive/release/indigo/${PN}/1.5.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ros_type_introspection
	ros-indigo/rosbag
	ros-indigo/rosbag_storage
	ros-indigo/roscpp
	ros-indigo/roscpp_serialization
	ros-indigo/rostime
	ros-indigo/topic_tools
	sys-devel/binutils
	dev-qt/qtsvg:5
	dev-qt/qtcore:5
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
