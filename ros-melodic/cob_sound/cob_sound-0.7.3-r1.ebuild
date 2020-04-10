# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package implements a sound play module using text2wave and aplay throu[...]"
HOMEPAGE="http://ros.org/wiki/cob_sound"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/melodic/${PN}/0.7.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/cob_srvs
	ros-melodic/diagnostic_msgs
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/visualization_msgs
	media-libs/alsa-oss
	media-video/vlc
	media-video/vlc
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
