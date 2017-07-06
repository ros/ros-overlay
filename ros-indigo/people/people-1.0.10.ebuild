# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The people stack holds algorithms for perceiving people from a number of sensors'"
HOMEPAGE="http://ros.org/wiki/people"
SRC_URI="https://github.com/OSUrobotics/people-release/archive/release/indigo/people/1.0.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/face_detector
	ros-indigo/leg_detector
	ros-indigo/people_msgs
	ros-indigo/people_tracking_filter
	ros-indigo/people_velocity_tracker
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

