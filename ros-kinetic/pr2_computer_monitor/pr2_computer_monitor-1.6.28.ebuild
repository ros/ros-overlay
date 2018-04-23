# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Monitors the computer\'s processor and hard drives of the PR2 and publishes[...]"
HOMEPAGE="http://www.ros.org/wiki/pr2_computer_monitor"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/kinetic/${PN}/1.6.28-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/pr2_msgs
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
