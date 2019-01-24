# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Rviz plugins for trajectory_tracker_msgs"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/kinetic/${PN}/0.3.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( BSD CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/pluginlib
	ros-kinetic/rviz
	ros-kinetic/trajectory_tracker_msgs
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
