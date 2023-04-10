# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="PlotJuggler plugin for ROS"
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/PlotJuggler/plotjuggler-ros-plugins-release/archive/release/melodic/${PN}/1.7.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="AGPLv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_msgs
	ros-melodic/geometry_msgs
	ros-melodic/nav_msgs
	ros-melodic/plotjuggler
	ros-melodic/plotjuggler_msgs
	ros-melodic/rosbag_storage
	ros-melodic/roscpp
	ros-melodic/roscpp_serialization
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/tf2_msgs
	ros-melodic/tf2_ros
	sys-devel/binutils
	dev-libs/boost[python]
	dev-qt/qtsvg:5
	dev-qt/qtwebsockets:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
