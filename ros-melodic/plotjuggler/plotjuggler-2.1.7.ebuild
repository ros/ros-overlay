# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="PlotJuggler: juggle with data"
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/facontidavide/${PN}-release/archive/release/melodic/${PN}/2.1.7-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ros_type_introspection
	ros-melodic/rosbag
	ros-melodic/rosbag_storage
	ros-melodic/roscpp
	ros-melodic/roscpp_serialization
	ros-melodic/rostime
	ros-melodic/tf
	ros-melodic/topic_tools
	sys-devel/binutils
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
	dev-qt/qtdeclarative:5
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
