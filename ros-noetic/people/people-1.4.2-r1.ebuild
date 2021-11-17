# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The people stack holds algorithms for perceiving people from a number of se[...]"
HOMEPAGE="http://ros.org/wiki/people"
SRC_URI="https://github.com/OSUrobotics/${PN}-release/archive/release/noetic/${PN}/1.4.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/face_detector
	ros-noetic/leg_detector
	ros-noetic/people_msgs
	ros-noetic/people_tracking_filter
	ros-noetic/people_velocity_tracker
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
