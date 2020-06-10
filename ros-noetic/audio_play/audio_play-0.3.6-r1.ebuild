# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Outputs audio to a speaker from a source node."
HOMEPAGE="http://ros.org/wiki/audio_play"
SRC_URI="https://github.com/ros-gbp/audio_common-release/archive/release/noetic/${PN}/0.3.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/audio_common_msgs
	ros-noetic/roscpp
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
