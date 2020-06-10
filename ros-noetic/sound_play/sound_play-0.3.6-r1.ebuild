# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="sound_play provides a ROS node that translates commands on a ROS topic \(<t[...]"
HOMEPAGE="http://ros.org/wiki/sound_play"
SRC_URI="https://github.com/ros-gbp/audio_common-release/archive/release/noetic/${PN}/0.3.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib_msgs
	ros-noetic/audio_common_msgs
	ros-noetic/diagnostic_msgs
	ros-noetic/message_runtime
	ros-noetic/roscpp
	ros-noetic/roslib
	ros-noetic/rospy
	app-accessibility/festival
	media-libs/gstreamer:1.0
	media-libs/gst-plugins-base:1.0
	media-libs/gst-plugins-good:1.0
	media-libs/gst-plugins-ugly:1.0
	dev-python/pygobject
	dev-python/pygobject
"
DEPEND="${RDEPEND}
	ros-noetic/actionlib
	ros-noetic/catkin
	ros-noetic/message_generation
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
