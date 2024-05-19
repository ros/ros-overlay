# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="RobotModel display using a \`/robot_description\` topic instead of a parameter"
HOMEPAGE="https://github.com/nobleo/rviz_robot_description_topic"
SRC_URI="https://github.com/nobleo/${PN}-release/archive/release/noetic/${PN}/1.0.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/rviz
	dev-qt/qtcore:5
	dev-qt/qtgui:5
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
