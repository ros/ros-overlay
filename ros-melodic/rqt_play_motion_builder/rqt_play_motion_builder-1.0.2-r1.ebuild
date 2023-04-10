# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rqt_play_motion_builder package, a front-end interface for play_motion_[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-robotics/play_motion_builder-release/archive/release/melodic/${PN}/1.0.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/play_motion_builder
	ros-melodic/play_motion_builder_msgs
	ros-melodic/play_motion_msgs
	ros-melodic/roscpp
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_cpp
	ros-melodic/sensor_msgs
	ros-melodic/urdf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/class_loader
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
