# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Track the output of the leg_detector to indicate the velocity of person."
HOMEPAGE="http://ros.org/wiki/people_velocity_tracker"
SRC_URI="https://github.com/OSUrobotics/people-release/archive/release/melodic/${PN}/1.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/easy_markers
	ros-melodic/geometry_msgs
	ros-melodic/kalman_filter
	ros-melodic/leg_detector
	ros-melodic/people_msgs
	ros-melodic/roslib
	ros-melodic/rospy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
