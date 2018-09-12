# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A rosout GUI viewer developed at Southwest Research Insititute as an\
	 [...]"
HOMEPAGE="http://ros.org/wiki/swri_console"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/indigo/${PN}/1.1.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosbag_storage
	ros-indigo/roscpp
	ros-indigo/rosgraph_msgs
	dev-libs/boost
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-qt/qtopengl:5
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
