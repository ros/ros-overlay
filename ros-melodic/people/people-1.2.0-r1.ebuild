# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The people stack holds algorithms for perceiving people from a number of se[...]"
HOMEPAGE="http://ros.org/wiki/people"
SRC_URI="https://github.com/OSUrobotics/${PN}-release/archive/release/melodic/${PN}/1.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/face_detector
	ros-melodic/leg_detector
	ros-melodic/people_msgs
	ros-melodic/people_tracking_filter
	ros-melodic/people_velocity_tracker
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
