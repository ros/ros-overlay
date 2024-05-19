# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="cob_dashboard is a modified version of \[\[pr2_dashboard\]\]."
HOMEPAGE="http://ros.org/wiki/cob_dashboard"
SRC_URI="https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/${PN}/0.6.35-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_msgs
	ros-noetic/roslib
	ros-noetic/rospy
	ros-noetic/rqt_gui
	ros-noetic/rqt_robot_dashboard
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
