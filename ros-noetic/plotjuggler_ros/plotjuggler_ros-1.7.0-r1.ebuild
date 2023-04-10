# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="PlotJuggler plugin for ROS"
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/PlotJuggler/plotjuggler-ros-plugins-release/archive/release/noetic/${PN}/1.7.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="AGPLv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_msgs
	ros-noetic/geometry_msgs
	ros-noetic/nav_msgs
	ros-noetic/plotjuggler
	ros-noetic/plotjuggler_msgs
	ros-noetic/rosbag_storage
	ros-noetic/roscpp
	ros-noetic/roscpp_serialization
	ros-noetic/sensor_msgs
	ros-noetic/tf
	ros-noetic/tf2_msgs
	ros-noetic/tf2_ros
	sys-devel/binutils
	dev-libs/boost[python]
	dev-qt/qtsvg:5
	dev-qt/qtwebsockets:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
