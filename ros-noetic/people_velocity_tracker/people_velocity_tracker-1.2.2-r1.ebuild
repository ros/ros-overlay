# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Track the output of the leg_detector to indicate the velocity of person."
HOMEPAGE="http://ros.org/wiki/people_velocity_tracker"
SRC_URI="https://github.com/OSUrobotics/people-release/archive/release/noetic/${PN}/1.2.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/easy_markers
	ros-noetic/geometry_msgs
	ros-noetic/kalman_filter
	ros-noetic/people_msgs
	ros-noetic/roslib
	ros-noetic/rospy
	test? ( ros-noetic/roslint )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
