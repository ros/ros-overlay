# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="sound_play provides a ROS node that translates commands on a ROS topic \(<t[...]"
HOMEPAGE="http://ros.org/wiki/sound_play"
SRC_URI="https://github.com/ros-gbp/audio_common-release/archive/release/melodic/${PN}/0.3.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib_msgs
	ros-melodic/audio_common_msgs
	ros-melodic/diagnostic_msgs
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/rospy
	app-accessibility/festival
	media-libs/gstreamer:1.0
	media-libs/gst-plugins-base:1.0
	media-libs/gst-plugins-good:1.0
	media-libs/gst-plugins-ugly:1.0
	dev-python/pygobject
	dev-python/pygobject
"
DEPEND="${RDEPEND}
	ros-melodic/actionlib
	ros-melodic/catkin
	ros-melodic/message_generation
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
