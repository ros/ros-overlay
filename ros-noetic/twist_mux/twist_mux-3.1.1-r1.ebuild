# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Twist multiplexer, which multiplex several velocity commands \(topics\) and[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/3.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="CC-BY-NC-SA-4.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/diagnostic_updater
	ros-noetic/geometry_msgs
	ros-noetic/roscpp
	ros-noetic/std_msgs
	ros-noetic/twist_mux_msgs
	ros-noetic/visualization_msgs
	test? ( ros-noetic/rospy )
	test? ( ros-noetic/rostopic )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
