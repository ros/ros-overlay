# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'cob_dashboard is a modified version of [[pr2_dashboard]].'"
HOMEPAGE="http://ros.org/wiki/cob_dashboard"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/indigo/cob_dashboard/0.6.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_msgs
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/rqt_gui
	ros-indigo/rqt_robot_dashboard
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

