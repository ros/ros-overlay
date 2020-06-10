# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt_rviz provides a GUI plugin embedding <a href=\"http://www.ros.org/wiki/[...]"
HOMEPAGE="http://wiki.ros.org/rqt_rviz"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.6.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/pluginlib
	ros-noetic/rqt_gui
	ros-noetic/rqt_gui_cpp
	ros-noetic/rviz
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
