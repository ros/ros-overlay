# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rqt_rviz provides a GUI plugin embedding <a href=\"http://www.ros.org/wiki/[...]"
HOMEPAGE="http://wiki.ros.org/rqt_rviz"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/0.6.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/pluginlib
	ros-lunar/rqt_gui
	ros-lunar/rqt_gui_cpp
	ros-lunar/rviz
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
