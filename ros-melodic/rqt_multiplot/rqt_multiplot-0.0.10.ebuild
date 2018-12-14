# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt_multiplot provides a GUI plugin for visualizing numeric values\
	in [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/anybotics/${PN}_plugin-release/archive/release/melodic/${PN}/0.0.10-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rosbag
	ros-melodic/roscpp
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_cpp
	ros-melodic/variant_topic_tools
	x11-libs/qwt:6
	dev-qt/qtcore:5
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
