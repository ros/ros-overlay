# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Track the output of the leg_detector to indicate the velocity of person."
HOMEPAGE="http://ros.org/wiki/people_velocity_tracker"
SRC_URI="https://github.com/OSUrobotics/people-release/archive/release/kinetic/${PN}/1.1.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/easy_markers
	ros-kinetic/geometry_msgs
	ros-kinetic/kalman_filter
	ros-kinetic/leg_detector
	ros-kinetic/people_msgs
	ros-kinetic/roslib
	ros-kinetic/rospy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
