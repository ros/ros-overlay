# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="rqt_multiplot provides a GUI plugin for visualizing numeric values in multi[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/anybotics/${PN}_plugin-release/archive/release/noetic/${PN}/0.0.12-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/rosbag
	ros-noetic/roscpp
	ros-noetic/rqt_gui
	ros-noetic/rqt_gui_cpp
	ros-noetic/variant_topic_tools
	x11-libs/qwt:6
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
