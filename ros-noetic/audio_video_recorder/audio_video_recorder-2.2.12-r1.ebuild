# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS package for recording image and audio synchronously"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/noetic/${PN}/2.2.12-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/audio_common_msgs
	ros-noetic/message_filters
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	media-libs/gstreamer:1.0
	media-libs/gst-plugins-base:1.0
	media-libs/gst-plugins-good:1.0
	media-libs/gst-plugins-ugly:1.0
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	media-libs/gst-plugins-base:1.0
	media-libs/gstreamer:1.0
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
