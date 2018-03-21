# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Monitors the computer\'s processor and hard drives of the PR2 and publishes[...]"
HOMEPAGE="http://www.ros.org/wiki/pr2_computer_monitor"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/indigo/${PN}/1.6.26-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/pr2_msgs
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
