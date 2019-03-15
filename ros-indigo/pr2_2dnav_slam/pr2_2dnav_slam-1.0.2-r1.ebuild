# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This application allows the PR2 to navigate autonomously while also buildin[...]"
HOMEPAGE="http://ros.org/wiki/pr2_2dnav_slam"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/pr2_navigation_apps-release/archive/release/indigo/${PN}/1.0.2-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/pr2_machine
	ros-indigo/pr2_navigation_perception
	ros-indigo/pr2_navigation_slam
	ros-indigo/pr2_navigation_teleop
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
