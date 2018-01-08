# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package implements a sound play module using text2wave and aplay throu[...]"
HOMEPAGE="http://ros.org/wiki/cob_sound"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/indigo/${PN}/0.6.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/cob_srvs
	ros-indigo/diagnostic_msgs
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/visualization_msgs
	media-libs/alsa-oss
	media-video/vlc
	media-video/vlc
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
