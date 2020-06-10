# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt GUI for rosmon, the node launcher and monitor for ROS.\
\	\	rosmon is a[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/xqms/rosmon-release/archive/release/melodic/${PN}/2.3.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/rosmon_msgs
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
