# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Monitors the computer\'s processor and hard drives of the PR2 and publishes[...]"
HOMEPAGE="http://www.ros.org/wiki/pr2_computer_monitor"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/noetic/${PN}/1.6.32-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_msgs
	ros-noetic/pr2_msgs
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
