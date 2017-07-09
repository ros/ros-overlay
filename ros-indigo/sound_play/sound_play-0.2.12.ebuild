# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="NONE"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/audio_common-release/archive/release/indigo/sound_play/0.2.12-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib_msgs
	ros-indigo/audio_common_msgs
	ros-indigo/diagnostic_msgs
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/rospy
	app-accessibility/festival
	media-libs/gst-plugins-good:0.10
	media-libs/gst-plugins-ugly:0.10
	media-libs/gst-plugins-base:0.10
	media-libs/gstreamer:0.10
	dev-python/gst-python
"
DEPEND="${RDEPEND}
	ros-indigo/actionlib
	ros-indigo/catkin
	ros-indigo/message_generation
	media-libs/gst-plugins-base:0.10
	media-libs/gstreamer:0.10
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

