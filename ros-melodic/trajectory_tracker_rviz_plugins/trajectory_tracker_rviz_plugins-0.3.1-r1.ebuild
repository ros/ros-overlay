# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Rviz plugins for trajectory_tracker_msgs"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/melodic/${PN}/0.3.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/pluginlib
	ros-melodic/rviz
	ros-melodic/trajectory_tracker_msgs
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
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
